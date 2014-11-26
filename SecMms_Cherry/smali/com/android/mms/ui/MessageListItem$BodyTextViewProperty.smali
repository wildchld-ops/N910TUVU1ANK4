.class public Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;
.super Ljava/lang/Object;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BodyTextViewProperty"
.end annotation


# instance fields
.field public mLinkMask:I

.field public mTextClickListener:Landroid/view/View$OnClickListener;

.field public mTextSize:F

.field public mTextSizeUnit:I

.field public mTextTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mLinkMask:I

    return-void
.end method


# virtual methods
.method public getLinkMask()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mLinkMask:I

    return v0
.end method

.method public getTextClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSize:F

    return v0
.end method

.method public getTextSizeUnit()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSizeUnit:I

    return v0
.end method

.method public getTextTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method
