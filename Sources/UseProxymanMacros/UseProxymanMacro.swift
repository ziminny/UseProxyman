import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

/// Implementation of the `stringify` macro, which takes an expression
/// of any type and produces a tuple containing the value of that expression
/// and the source code that produced the value. For example
///
///     #stringify(x + y)
///
///  will expand to
///
///     (x + y, "x + y")
public struct UseProxymanMacro: MemberMacro {
    
 
    public static func expansion(of node: AttributeSyntax, providingMembersOf declaration: some DeclGroupSyntax, in context: some MacroExpansionContext) throws -> [DeclSyntax] {
        
        let proxymanProperty: DeclSyntax = """
        private var isProxymanEnabled: Bool {
            return ProcessInfo.processInfo.arguments.contains("use-proxyman")
        }
        """

        return [proxymanProperty]
    }
    
    
}

@main
struct UseProxymanPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        UseProxymanMacro.self,
    ]
}

