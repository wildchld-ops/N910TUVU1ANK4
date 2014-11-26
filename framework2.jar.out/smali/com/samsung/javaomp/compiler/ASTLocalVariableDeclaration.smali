.class public Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;
.super Lcom/samsung/javaomp/compiler/SimpleNode;


# instance fields
.field private isFinal:Z

.field private isVolatile:Z

.field private type:Ljava/lang/String;

.field private variables:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/compiler/Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;->variables:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;->variables:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addVariable([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/javaomp/compiler/Variable;

    invoke-direct {v0}, Lcom/samsung/javaomp/compiler/Variable;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, v0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, v0, Lcom/samsung/javaomp/compiler/Variable;->arrayType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;->isFinal:Z

    iput-boolean v1, v0, Lcom/samsung/javaomp/compiler/Variable;->isFinal:Z

    iget-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;->isVolatile:Z

    iput-boolean v1, v0, Lcom/samsung/javaomp/compiler/Variable;->isVolatile:Z

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;->variables:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/javaomp/compiler/Variable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;->variables:Ljava/util/LinkedList;

    return-object v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFinal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;->isFinal:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;->type:Ljava/lang/String;

    return-void
.end method

.method public setVolatile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/ASTLocalVariableDeclaration;->isVolatile:Z

    return-void
.end method
