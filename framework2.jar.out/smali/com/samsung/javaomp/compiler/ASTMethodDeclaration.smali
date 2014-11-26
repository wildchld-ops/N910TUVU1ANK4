.class public Lcom/samsung/javaomp/compiler/ASTMethodDeclaration;
.super Lcom/samsung/javaomp/compiler/SimpleNode;


# instance fields
.field protected isStatic:Z


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
.method public isStatic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTMethodDeclaration;->isStatic:Z

    return v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/ASTMethodDeclaration;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setStatic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/ASTMethodDeclaration;->isStatic:Z

    return-void
.end method
