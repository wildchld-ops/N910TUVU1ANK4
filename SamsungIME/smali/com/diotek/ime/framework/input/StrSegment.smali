.class public Lcom/diotek/ime/framework/input/StrSegment;
.super Ljava/lang/Object;
.source "StrSegment.java"


# instance fields
.field public from:I

.field public string:Ljava/lang/String;

.field public to:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    iput p2, p0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    iput p3, p0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, v0, v1, v1}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    return-void
.end method
