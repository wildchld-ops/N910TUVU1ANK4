.class public Lcom/samsung/javaomp/compiler/Token;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lcom/samsung/javaomp/compiler/Token;

.field public specialToken:Lcom/samsung/javaomp/compiler/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/javaomp/compiler/Token;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/javaomp/compiler/Token;->kind:I

    iput-object p2, p0, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    return-void
.end method

.method public static newToken(I)Lcom/samsung/javaomp/compiler/Token;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/javaomp/compiler/Token;->newToken(ILjava/lang/String;)Lcom/samsung/javaomp/compiler/Token;

    move-result-object v0

    return-object v0
.end method

.method public static newToken(ILjava/lang/String;)Lcom/samsung/javaomp/compiler/Token;
    .locals 1

    new-instance v0, Lcom/samsung/javaomp/compiler/Token;

    invoke-direct {v0, p0, p1}, Lcom/samsung/javaomp/compiler/Token;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    return-object v0
.end method
