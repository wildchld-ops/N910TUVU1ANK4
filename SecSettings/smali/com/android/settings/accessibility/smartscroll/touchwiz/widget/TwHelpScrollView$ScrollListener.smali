.class public Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;
.super Ljava/lang/Object;
.source "TwHelpScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollListener"
.end annotation


# instance fields
.field mMaxScroll:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;->mMaxScroll:I

    return-void
.end method


# virtual methods
.method public getMaxScrollSize()I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;->mMaxScroll:I

    return v0
.end method

.method public isSmartScrollEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showScrollGuide()V
    .locals 0

    return-void
.end method

.method public showScrollReadyGuide()V
    .locals 0

    return-void
.end method
