.class public Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "ScrollingArrowKeyMovementMethod.java"


# static fields
.field private static sInstance:Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    sget-object v0, Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;->sInstance:Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;

    invoke-direct {v0}, Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;-><init>()V

    sput-object v0, Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;->sInstance:Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;

    :cond_0
    sget-object v0, Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;->sInstance:Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;

    return-object v0
.end method


# virtual methods
.method protected bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method protected end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method protected lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method protected top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/text/Spannable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/method/BaseMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method
