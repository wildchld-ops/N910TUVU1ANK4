.class public Lcom/arm/streamline/StreamlineAnnotate$Color;
.super Ljava/lang/Object;
.source "StreamlineAnnotate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arm/streamline/StreamlineAnnotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Color"
.end annotation


# instance fields
.field public blue:I

.field public green:I

.field public red:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1, p1}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/arm/streamline/StreamlineAnnotate$Color;->red:I

    iput p2, p0, Lcom/arm/streamline/StreamlineAnnotate$Color;->green:I

    iput p3, p0, Lcom/arm/streamline/StreamlineAnnotate$Color;->blue:I

    return-void
.end method
