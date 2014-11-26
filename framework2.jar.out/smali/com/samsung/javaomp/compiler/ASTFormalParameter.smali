.class public Lcom/samsung/javaomp/compiler/ASTFormalParameter;
.super Lcom/samsung/javaomp/compiler/SimpleNode;


# instance fields
.field protected variable:Lcom/samsung/javaomp/compiler/Variable;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(I)V

    new-instance v0, Lcom/samsung/javaomp/compiler/Variable;

    invoke-direct {v0}, Lcom/samsung/javaomp/compiler/Variable;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTFormalParameter;->variable:Lcom/samsung/javaomp/compiler/Variable;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V

    new-instance v0, Lcom/samsung/javaomp/compiler/Variable;

    invoke-direct {v0}, Lcom/samsung/javaomp/compiler/Variable;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTFormalParameter;->variable:Lcom/samsung/javaomp/compiler/Variable;

    return-void
.end method


# virtual methods
.method public getVariable()Lcom/samsung/javaomp/compiler/Variable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTFormalParameter;->variable:Lcom/samsung/javaomp/compiler/Variable;

    return-object v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/ASTFormalParameter;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setVariable(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTFormalParameter;->variable:Lcom/samsung/javaomp/compiler/Variable;

    aget-object v3, p3, v2

    iput-object v3, v0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTFormalParameter;->variable:Lcom/samsung/javaomp/compiler/Variable;

    aget-object v3, p3, v1

    iput-object v3, v0, Lcom/samsung/javaomp/compiler/Variable;->arrayType:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTFormalParameter;->variable:Lcom/samsung/javaomp/compiler/Variable;

    iput-object p1, v0, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/javaomp/compiler/ASTFormalParameter;->variable:Lcom/samsung/javaomp/compiler/Variable;

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/samsung/javaomp/compiler/Variable;->isFinal:Z

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTFormalParameter;->variable:Lcom/samsung/javaomp/compiler/Variable;

    and-int/lit16 v3, p2, 0x200

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v1, v0, Lcom/samsung/javaomp/compiler/Variable;->isVolatile:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
