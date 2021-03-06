// Copyright 2020 Thumbtack, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Enum representing syntax conditions in which STAR may count a type.
public enum SyntaxType: String, CaseIterable {
    /// E.g., count `UIView()` towards UIView
    case constructorCall

    /// E.g., count `UIDevice.current` towards UIDevice
    case staticPropertyReference

    /// E.g., count `class Foo: UIView` towards UIView
    /// (includes both subclassing and protocol conformance)
    case typeInheritance
}
