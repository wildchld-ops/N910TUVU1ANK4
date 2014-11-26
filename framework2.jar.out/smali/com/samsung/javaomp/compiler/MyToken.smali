.class public Lcom/samsung/javaomp/compiler/MyToken;
.super Lcom/samsung/javaomp/compiler/Token;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field realKind:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/Token;-><init>()V

    const/16 v0, 0xb9

    iput v0, p0, Lcom/samsung/javaomp/compiler/MyToken;->realKind:I

    iput p1, p0, Lcom/samsung/javaomp/compiler/Token;->kind:I

    iput-object p2, p0, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    return-void
.end method

.method public static final newToken(ILjava/lang/String;)Lcom/samsung/javaomp/compiler/Token;
    .locals 1

    new-instance v0, Lcom/samsung/javaomp/compiler/MyToken;

    invoke-direct {v0, p0, p1}, Lcom/samsung/javaomp/compiler/MyToken;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
