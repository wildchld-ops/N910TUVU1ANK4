.class public Landroid/webkitsec/HtmlComposerView$SelectionOffset;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionOffset"
.end annotation


# instance fields
.field public endOffset:I

.field public startOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput p2, p0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    return-void
.end method
