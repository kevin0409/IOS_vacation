//
//  ImageStore.swift
//  AlbumSample
//
//  Created by 박승호 on 2023/07/14.
//

import SwiftUI


class ImageStore{
    private static var cache = [String: Image]()
    
    static func load(urlString : String, callback: @escaping (Image)->Void){
        if let img = cache[urlString]{
            callback(img)
            return
        }
        OperationQueue().addOperation {
            guard let url = URL(string: urlString)
            else{
                return
            }
            guard let data = try? Data(contentsOf: url)
            else{
                return
            }
            guard let uiimg = UIImage(data: data)
            else{
                return
            }
            let img = Image(uiImage: uiimg)
            OperationQueue.main.addOperation {
                callback(img)
            }
        }
    }
}
