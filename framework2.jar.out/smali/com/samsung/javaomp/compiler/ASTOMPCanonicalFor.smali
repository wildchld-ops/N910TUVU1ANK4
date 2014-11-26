.class public Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;
.super Lcom/samsung/javaomp/compiler/SimpleNode;


# instance fields
.field protected exitCond:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTOMPForExitCond;",
            ">;"
        }
    .end annotation
.end field

.field protected forStringList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected incrExpr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTOMPForIncrExpr;",
            ">;"
        }
    .end annotation
.end field

.field protected initExpr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;",
            ">;"
        }
    .end annotation
.end field

.field protected statement:Lcom/samsung/javaomp/compiler/ASTStatement;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->initExpr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->exitCond:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->incrExpr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->forStringList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->initExpr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->exitCond:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->incrExpr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->forStringList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addExitCond(Lcom/samsung/javaomp/compiler/ASTOMPForExitCond;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->exitCond:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addForInitExpr(Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->initExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addForString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->forStringList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIncrExpr(Lcom/samsung/javaomp/compiler/ASTOMPForIncrExpr;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->incrExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getExitCond()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTOMPForExitCond;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->exitCond:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getForString()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->forStringList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIncrExpr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTOMPForIncrExpr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->incrExpr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInitExpr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->initExpr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatement()Lcom/samsung/javaomp/compiler/ASTStatement;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->statement:Lcom/samsung/javaomp/compiler/ASTStatement;

    return-object v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeExitCond(Lcom/samsung/javaomp/compiler/ASTOMPForExitCond;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->exitCond:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeForStringList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->forStringList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIncrExpr(Lcom/samsung/javaomp/compiler/ASTOMPForIncrExpr;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->incrExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeInitExpr(Lcom/samsung/javaomp/compiler/ASTOMPForInitExpr;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->initExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setStatement(Lcom/samsung/javaomp/compiler/ASTStatement;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPCanonicalFor;->statement:Lcom/samsung/javaomp/compiler/ASTStatement;

    return-void
.end method
