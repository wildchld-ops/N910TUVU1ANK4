.class public Lcom/samsung/javaomp/compiler/ClausesChecker;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkClausesCorrectnes(Lcom/samsung/javaomp/compiler/ASTOMPClauses;Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;)V
    .locals 12

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getPrivateList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getSharedList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getFirstprivateList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getLastprivateList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getCopyprivateList()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->collectReductionVariables()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as private and shared"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_1
    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as private and copyprivate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as private and firstprivate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_3
    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as private and lastprivate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_4
    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as private and reduction variable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_5
    invoke-static {v2, v0}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v11, :cond_6

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared as private more than once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_6
    invoke-virtual {p1, v0}, Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;->findVariable(Ljava/lang/String;)Lcom/samsung/javaomp/compiler/Variable;

    move-result-object v8

    if-nez v8, :cond_7

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Private variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' was not declared"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getOuterClauses()Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isParallel()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isPrivateVariableInOuterParallelContext(Ljava/lang/String;Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Private variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is private in outer context"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_8
    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v11, :cond_a

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared as shared more than once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_a
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as shared and firstprivate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_b
    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as shared and lastprivate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_c
    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as shared and reduction variable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_d
    invoke-virtual {p1, v0}, Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;->findVariable(Ljava/lang/String;)Lcom/samsung/javaomp/compiler/Variable;

    move-result-object v8

    if-nez v8, :cond_9

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shared variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' was not declared"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_e
    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v11, :cond_10

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared as firstprivate more than once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_10
    invoke-virtual {p1, v0}, Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;->findVariable(Ljava/lang/String;)Lcom/samsung/javaomp/compiler/Variable;

    move-result-object v8

    if-nez v8, :cond_11

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firstprivate variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' was not declared"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_11
    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as firstprivate and copyprivate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_12
    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as firstprivate and reduction variable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_13
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getOuterClauses()Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isParallel()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {p0, v0, p1}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isPrivateVariableInOuterParallelContext(Ljava/lang/String;Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;)Z

    move-result v8

    if-eqz v8, :cond_f

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firstprivate variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is private in outer context"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_14
    invoke-virtual {v5}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v0}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v11, :cond_16

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared as lastprivate more than once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_16
    invoke-virtual {p1, v0}, Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;->findVariable(Ljava/lang/String;)Lcom/samsung/javaomp/compiler/Variable;

    move-result-object v8

    if-nez v8, :cond_17

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lastprivate variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' was not declared"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_17
    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared both as firstprivate and reduction variable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_18
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getOuterClauses()Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isParallel()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {p0, v0, p1}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isPrivateVariableInOuterParallelContext(Ljava/lang/String;Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;)Z

    move-result v8

    if-eqz v8, :cond_15

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lastprivate variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is private in outer context"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_19
    invoke-virtual {v7}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v7, v0}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v11, :cond_1b

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared as reduction variable more than once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_1b
    invoke-virtual {p1, v0}, Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;->findVariable(Ljava/lang/String;)Lcom/samsung/javaomp/compiler/Variable;

    move-result-object v9

    if-nez v9, :cond_1c

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reduction variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' was not declared"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_1c
    iget-object v1, v9, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getReductionOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v10, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v10, v9, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reduction variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' has unsupported type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getOuterClauses()Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0, v0, p1}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isPrivateVariableInOuterParallelContext(Ljava/lang/String;Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reduction variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is private in outer context"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_1e
    invoke-virtual {v6}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v11, :cond_1f

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' declared as copyprivate variable more than once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_20
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isDefaultNone()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getUsedVariables()Ljava/util/HashSet;

    move-result-object v1

    iget-object v0, p1, Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;->varTable:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/compiler/Variable;

    iget-object v9, v0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, v0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    iget-object v9, v0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    iget-object v9, v0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    iget-object v9, v0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    iget-object v9, v0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    new-instance v1, Lcom/samsung/javaomp/compiler/JavaOMPError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' not specified in any clause, but it is used inside parallel region"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v1

    :cond_23
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isNoWait()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getCopyprivateList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lcom/samsung/javaomp/compiler/JavaOMPError;

    const-string v1, "Clause \'nowait\' can\'t be specified when clause \'copyprivate\' is used"

    invoke-direct {v0, v1, p0}, Lcom/samsung/javaomp/compiler/JavaOMPError;-><init>(Ljava/lang/String;Lcom/samsung/javaomp/compiler/SimpleNode;)V

    throw v0

    :cond_24
    return-void
.end method
