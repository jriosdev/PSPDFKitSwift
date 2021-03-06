//
//  Copyright (c) 2018 PSPDFKit GmbH. All rights reserved.
//
//  The PSPDFKit Sample applications are licensed with a modified BSD license.
//  Please see License for details. This notice may not be removed from
//  this file.
//

import Foundation
@_exported import PSPDFKit //Clang module

extension PSPDFAbstractShapeAnnotation {

    /// The annotation data in a format suitable for display in PSPDFDrawLayer.
    /// Modifies the annotation content when set.
    public var pointSequences: [[PSPDFDrawingPoint]] {
        get {
            return __pointSequences.map { arr -> [PSPDFDrawingPoint] in
                arr.map { value -> PSPDFDrawingPoint in
                    var drawingPoint = PSPDFDrawingPoint()
                    value.getValue(&drawingPoint)
                    return drawingPoint
                }
            }
        }
        set {
            __pointSequences = newValue.map { drawingPoint -> [NSValue] in
                var drawingPoint = drawingPoint
                return [NSValue(bytes: &drawingPoint, objCType: _getObjCTypeEncoding(PSPDFDrawingPoint.self))]
            }
        }

    }
}
