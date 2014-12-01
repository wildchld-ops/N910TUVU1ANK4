.class public Lcom/android/mms/ui/MessageSkinBubbleItem;
.super Landroid/widget/RelativeLayout;
.source "MessageSkinBubbleItem.java"


# static fields
.field private static final mReceivedBubbleIds:[I

.field private static final mSentBubbleIds:[I


# instance fields
.field private mBodyTextView:Landroid/widget/TextView;

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

.field private mMessageSkinBubbleLayout:Landroid/widget/LinearLayout;

.field private mNewMsgDate:Landroid/widget/TextView;

.field private mSentMsgDate:Landroid/widget/TextView;

.field private mSentMsgImage1left:Landroid/widget/ImageView;

.field private mSentMsgImage1right:Landroid/widget/ImageView;

.field private mSentMsgImage2left:Landroid/widget/ImageView;

.field private mSentMsgImage2right:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mReceivedBubbleIds:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentBubbleIds:[I

    return-void

    :array_0
    .array-data 4
        0x7f0201d4
        0x7f0201d7
        0x7f0201da
        0x7f0201dd
        0x7f0201e0
        0x7f0201d4
    .end array-data

    :array_1
    .array-data 4
        0x7f0201e3
        0x7f0201e6
        0x7f0201e9
        0x7f0201ec
        0x7f0201ef
        0x7f0201e3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageSkinFakeItem;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/16 v8, 0x8

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v2

    iput-object p1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageSkinFakeItem;->mText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v0, 0xb00

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mContext:Landroid/content/Context;

    const/16 v7, 0xb01

    invoke-static {v6, v3, v4, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageSkinFakeItem;->mIsNew:Z

    if-eqz v6, :cond_1

    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageSkinBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mNewMsgDate:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mNewMsgDate:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v2, v11, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1left:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2left:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1right:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2right:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1left:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2left:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1right:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2right:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageSkinBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgDate:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgDate:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v2, v11, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1right:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2right:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1left:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2left:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1right:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2right:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1left:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2left:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getIsNew()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageSkinFakeItem;->mIsNew:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0271

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageSkinBubbleLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0273

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0263

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mBodyTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0275

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgDate:Landroid/widget/TextView;

    const v0, 0x7f0b0276

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mNewMsgDate:Landroid/widget/TextView;

    const v0, 0x7f0b0274

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1left:Landroid/widget/ImageView;

    const v0, 0x7f0b0277

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1right:Landroid/widget/ImageView;

    const v0, 0x7f0b0272

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2left:Landroid/widget/ImageView;

    const v0, 0x7f0b0278

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2right:Landroid/widget/ImageView;

    return-void
.end method

.method public setBubbleImage(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageSkinFakeItem;->mIsNew:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/mms/ui/MessageSkinBubbleItem;->mReceivedBubbleIds:[I

    aget v0, v1, p1

    if-ne p1, v4, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1left:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2left:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1right:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2right:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1left:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2left:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1right:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2right:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentBubbleIds:[I

    aget v0, v1, p1

    if-ne p1, v4, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1right:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2right:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1left:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2left:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1right:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2right:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage1left:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mSentMsgImage2left:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessageItem(Lcom/android/mms/ui/MessageSkinFakeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageSkinBubbleItem;->mMessageItem:Lcom/android/mms/ui/MessageSkinFakeItem;

    return-void
.end method
