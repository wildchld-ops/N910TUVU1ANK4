.class Lcom/samsung/javaomp/compiler/ASTOMPDirectiveWithClauses;
.super Lcom/samsung/javaomp/compiler/SimpleNode;


# instance fields
.field protected clauses:Lcom/samsung/javaomp/compiler/ASTOMPClauses;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V

    return-void
.end method


# virtual methods
.method public getClauses()Lcom/samsung/javaomp/compiler/ASTOMPClauses;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPDirectiveWithClauses;->clauses:Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    return-object v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/SimpleNode;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setClauses(Lcom/samsung/javaomp/compiler/ASTOMPClauses;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPDirectiveWithClauses;->clauses:Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    return-void
.end method
