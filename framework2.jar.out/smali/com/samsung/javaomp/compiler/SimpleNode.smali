.class public Lcom/samsung/javaomp/compiler/SimpleNode;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/javaomp/compiler/Node;


# instance fields
.field protected begin:Lcom/samsung/javaomp/compiler/Token;

.field protected children:[Lcom/samsung/javaomp/compiler/Node;

.field protected end:Lcom/samsung/javaomp/compiler/Token;

.field protected id:I

.field protected parent:Lcom/samsung/javaomp/compiler/Node;

.field protected parser:Lcom/samsung/javaomp/compiler/JavaParser;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->id:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->parser:Lcom/samsung/javaomp/compiler/JavaParser;

    return-void
.end method

.method private addUnicodeEscapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x200

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lcom/samsung/javaomp/compiler/SimpleNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    aget-object v0, v0, v1

    check-cast v0, Lcom/samsung/javaomp/compiler/SimpleNode;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/javaomp/compiler/SimpleNode;->dump(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getFirstToken()Lcom/samsung/javaomp/compiler/Token;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->begin:Lcom/samsung/javaomp/compiler/Token;

    return-object v0
.end method

.method public getLastToken()Lcom/samsung/javaomp/compiler/Token;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->end:Lcom/samsung/javaomp/compiler/Token;

    return-object v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/SimpleNode;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public jjtAddChild(Lcom/samsung/javaomp/compiler/Node;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lcom/samsung/javaomp/compiler/Node;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    aput-object p1, v0, p2

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lcom/samsung/javaomp/compiler/Node;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    goto :goto_0
.end method

.method public jjtClose()V
    .locals 0

    return-void
.end method

.method public jjtGetChild(I)Lcom/samsung/javaomp/compiler/Node;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public jjtGetNumChildren()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    array-length v0, v0

    goto :goto_0
.end method

.method public jjtGetParent()Lcom/samsung/javaomp/compiler/Node;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->parent:Lcom/samsung/javaomp/compiler/Node;

    return-object v0
.end method

.method public jjtOpen()V
    .locals 0

    return-void
.end method

.method public jjtSetParent(Lcom/samsung/javaomp/compiler/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->parent:Lcom/samsung/javaomp/compiler/Node;

    return-void
.end method

.method protected print(Lcom/samsung/javaomp/compiler/Token;Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p1, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v1, v0, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/javaomp/compiler/SimpleNode;->addUnicodeEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/javaomp/compiler/Token;->next:Lcom/samsung/javaomp/compiler/Token;

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/SimpleNode;->addUnicodeEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public printWithChildren(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 4

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->begin:Lcom/samsung/javaomp/compiler/Token;

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->children:[Lcom/samsung/javaomp/compiler/Node;

    aget-object v0, v0, v1

    check-cast v0, Lcom/samsung/javaomp/compiler/SimpleNode;

    :goto_1
    iget-object v3, v0, Lcom/samsung/javaomp/compiler/SimpleNode;->begin:Lcom/samsung/javaomp/compiler/Token;

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;->print(Lcom/samsung/javaomp/compiler/Token;Ljava/io/PrintWriter;)V

    iget-object v2, v2, Lcom/samsung/javaomp/compiler/Token;->next:Lcom/samsung/javaomp/compiler/Token;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;->jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->end:Lcom/samsung/javaomp/compiler/Token;

    iget-object v3, v0, Lcom/samsung/javaomp/compiler/SimpleNode;->end:Lcom/samsung/javaomp/compiler/Token;

    if-ne v2, v3, :cond_2

    :cond_1
    :goto_2
    return-object p2

    :cond_2
    iget-object v0, v0, Lcom/samsung/javaomp/compiler/SimpleNode;->end:Lcom/samsung/javaomp/compiler/Token;

    iget-object v2, v0, Lcom/samsung/javaomp/compiler/Token;->next:Lcom/samsung/javaomp/compiler/Token;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->end:Lcom/samsung/javaomp/compiler/Token;

    if-eq v2, v0, :cond_4

    invoke-virtual {p0, v2, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;->print(Lcom/samsung/javaomp/compiler/Token;Ljava/io/PrintWriter;)V

    iget-object v2, v2, Lcom/samsung/javaomp/compiler/Token;->next:Lcom/samsung/javaomp/compiler/Token;

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;->print(Lcom/samsung/javaomp/compiler/Token;Ljava/io/PrintWriter;)V

    goto :goto_2
.end method

.method public process(Ljava/io/PrintWriter;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Error - this should not be called"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public setFirstToken(Lcom/samsung/javaomp/compiler/Token;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->begin:Lcom/samsung/javaomp/compiler/Token;

    return-void
.end method

.method public setLastToken(Lcom/samsung/javaomp/compiler/Token;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->end:Lcom/samsung/javaomp/compiler/Token;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParser;->jjtNodeName:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/javaomp/compiler/SimpleNode;->id:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/SimpleNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
