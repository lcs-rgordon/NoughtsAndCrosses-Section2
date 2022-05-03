//
//  TileView.swift
//  NoughtsAndCrosses
//
//  Created by Russell Gordon on 2022-05-03.
//

import SwiftUI

struct TileView: View {
    
    // MARK: Stored properties
    @Binding var state: String
    
    // MARK: Computed properties
    var body: some View {
        Text(state)
            .font(.largeTitle)
            .frame(width: 50, height: 50)
            .border(Color.black, width: 3)
            .contentShape(Rectangle())
            .onTapGesture {
                state = nought
            }
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView(state: .constant(cross))
        TileView(state: .constant(nought))
        TileView(state: .constant(empty))
    }
}
