//
//  DummyLoadingTask.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 02. 18..
//

class DummyLoadingTask {
    static func load() async throws {
        print("Loading started")
        try await Task.sleep(for: .seconds(Constants.loadingTask))
        print("Loading finished")
        return
    }
}
