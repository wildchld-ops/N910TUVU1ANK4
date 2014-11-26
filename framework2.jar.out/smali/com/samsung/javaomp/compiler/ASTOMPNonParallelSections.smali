.class public Lcom/samsung/javaomp/compiler/ASTOMPNonParallelSections;
.super Lcom/samsung/javaomp/compiler/ASTOMPDirectiveWithClauses;


# instance fields
.field protected statements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/ASTOMPDirectiveWithClauses;-><init>(I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPNonParallelSections;->statements:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/compiler/ASTOMPDirectiveWithClauses;-><init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPNonParallelSections;->statements:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addStatement(Lcom/samsung/javaomp/compiler/ASTStatement;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPNonParallelSections;->statements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic getClauses()Lcom/samsung/javaomp/compiler/ASTOMPClauses;
    .locals 1

    invoke-super {p0}, Lcom/samsung/javaomp/compiler/ASTOMPDirectiveWithClauses;->getClauses()Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    move-result-object v0

    return-object v0
.end method

.method public getStatements()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTStatement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPNonParallelSections;->statements:Ljava/util/LinkedList;

    return-object v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/ASTOMPNonParallelSections;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setClauses(Lcom/samsung/javaomp/compiler/ASTOMPClauses;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/javaomp/compiler/ASTOMPDirectiveWithClauses;->setClauses(Lcom/samsung/javaomp/compiler/ASTOMPClauses;)V

    return-void
.end method
