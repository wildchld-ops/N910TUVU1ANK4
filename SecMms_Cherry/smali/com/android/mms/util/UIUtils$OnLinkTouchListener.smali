.class public Lcom/android/mms/util/UIUtils$OnLinkTouchListener;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/UIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnLinkTouchListener"
.end annotation


# static fields
.field public static final SELECTED_URL_SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

.field public static final SELECTED_URL_SPAN_UNDERLINE:Landroid/text/style/UnderlineSpan;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mIsForDialog:Z

.field private mPreSelected:Z

.field private mUseLinksContextMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xc3874c

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_UNDERLINE:Landroid/text/style/UnderlineSpan;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
    .param p2    # Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mUseLinksContextMenu:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mIsForDialog:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Z)V
    .locals 0
    .param p1    # Landroid/app/Activity;
    .param p2    # Landroid/os/Handler;
    .param p3    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-boolean p3, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mUseLinksContextMenu:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;ZZ)V
    .locals 0
    .param p1    # Landroid/app/Activity;
    .param p2    # Landroid/os/Handler;
    .param p3    # Z
    .param p4    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;-><init>(Landroid/app/Activity;Landroid/os/Handler;Z)V

    iput-boolean p4, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mIsForDialog:Z

    return-void
.end method

.method private onTouchDialog(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    move-object v7, p1

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v9, v1, Landroid/text/Spannable;

    if-nez v9, :cond_0

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    if-nez v0, :cond_2

    const/4 v9, 0x2

    new-array v4, v9, [I

    invoke-static {v7, p2, v4}, Lcom/android/mms/util/UIUtils;->getSelectedLinkText(Landroid/widget/TextView;Landroid/view/MotionEvent;[I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v3

    check-cast v9, Landroid/text/Spanned;

    const/4 v10, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Landroid/text/style/URLSpan;

    invoke-interface {v9, v10, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    if-eqz v8, :cond_3

    array-length v9, v8

    if-lez v9, :cond_3

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    sget-object v9, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    const/4 v10, 0x0

    aget v10, v4, v10

    const/4 v11, 0x1

    aget v11, v4, v11

    const/4 v12, 0x0

    invoke-interface {v2, v9, v10, v11, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object v9, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_UNDERLINE:Landroid/text/style/UnderlineSpan;

    const/4 v10, 0x0

    aget v10, v4, v10

    const/4 v11, 0x1

    aget v11, v4, v11

    const/4 v12, 0x0

    invoke-interface {v2, v9, v10, v11, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-boolean v9, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mUseLinksContextMenu:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mActivity:Landroid/app/Activity;

    invoke-static {v9, v6, v5}, Lcom/android/mms/ui/MessageUtils;->showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    :goto_0
    const/4 v9, 0x1

    :goto_1
    return v9

    :cond_1
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x2

    if-ne v0, v9, :cond_4

    :cond_3
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    const/4 v9, 0x1

    if-ne v0, v9, :cond_3

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    sget-object v9, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v2, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v9, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_UNDERLINE:Landroid/text/style/UnderlineSpan;

    invoke-interface {v2, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private onTouchNormal(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    move-object/from16 v9, p1

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v11, v2, Landroid/text/Spannable;

    if-nez v11, :cond_0

    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v9, v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    sub-int/2addr v11, v12

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mPreSelected:Z

    :cond_1
    const/4 v11, 0x0

    :goto_1
    return v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    const/4 v11, 0x2

    if-eq v1, v11, :cond_1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_1

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    sub-int/2addr v11, v12

    if-eqz v11, :cond_4

    const/4 v4, 0x1

    :goto_2
    iget-boolean v11, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mPreSelected:Z

    if-nez v11, :cond_5

    if-eqz v4, :cond_5

    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v11, 0x2

    new-array v6, v11, [I

    move-object/from16 v0, p2

    invoke-static {v9, v0, v6}, Lcom/android/mms/util/UIUtils;->getSelectedLinkText(Landroid/widget/TextView;Landroid/view/MotionEvent;[I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object v11, v5

    check-cast v11, Landroid/text/Spanned;

    const/4 v12, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const-class v14, Landroid/text/style/URLSpan;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    if-eqz v10, :cond_1

    array-length v11, v10

    if-lez v11, :cond_1

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    sget-object v11, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    const/4 v12, 0x0

    aget v12, v6, v12

    const/4 v13, 0x1

    aget v13, v6, v13

    const/4 v14, 0x0

    invoke-interface {v3, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object v11, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_UNDERLINE:Landroid/text/style/UnderlineSpan;

    const/4 v12, 0x0

    aget v12, v6, v12

    const/4 v13, 0x1

    aget v13, v6, v13

    const/4 v14, 0x0

    invoke-interface {v3, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v11, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/mms/util/UIUtils$OnLinkTouchListener$1;

    invoke-direct {v12, p0, v3}, Lcom/android/mms/util/UIUtils$OnLinkTouchListener$1;-><init>(Lcom/android/mms/util/UIUtils$OnLinkTouchListener;Landroid/text/Spannable;)V

    const-wide/16 v13, 0xc8

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v11, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mUseLinksContextMenu:Z

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mActivity:Landroid/app/Activity;

    invoke-static {v11, v8, v7}, Lcom/android/mms/ui/MessageUtils;->showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x0

    aget-object v11, v10, v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_3
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-boolean v0, p0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->mIsForDialog:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->onTouchDialog(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->onTouchNormal(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
