.class public Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RejectCallWithMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/RejectCallWithMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RejectCallWithMessageContentArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTextViewResourceId:I

.field final synthetic this$0:Lcom/android/incallui/RejectCallWithMessageContent;


# direct methods
.method public constructor <init>(Lcom/android/incallui/RejectCallWithMessageContent;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->init(Landroid/content/Context;II)V

    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;
    .param p4    # I

    if-nez p2, :cond_3

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    :goto_0
    :try_start_0
    iget v5, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mTextViewResourceId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/incallui/RejectCallWithMessageContent;->setRejectMsgDescription(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/incallui/RejectCallWithMessageContent;->access$000(Lcom/android/incallui/RejectCallWithMessageContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getNumberPresentation()I

    move-result v2

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    # getter for: Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/RejectCallWithMessageContent;->access$100(Lcom/android/incallui/RejectCallWithMessageContent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v2, v5, :cond_1

    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-eq v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    # getter for: Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/RejectCallWithMessageContent;->access$100(Lcom/android/incallui/RejectCallWithMessageContent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    # invokes: Lcom/android/incallui/RejectCallWithMessageContent;->isSmsAvailable()Z
    invoke-static {v5}, Lcom/android/incallui/RejectCallWithMessageContent;->access$200(Lcom/android/incallui/RejectCallWithMessageContent;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const v5, -0x777778

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-object v4

    :cond_3
    move-object v4, p2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "RejectCallWithMessageContentArrayAdapter"

    const-string v6, "You must supply a resource ID for a TextView"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "RejectCallWithMessageContentArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private init(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mResource:I

    iget v0, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mTextViewResourceId:I

    if-nez v0, :cond_0

    const v0, 0x7f0e028a

    iput v0, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mTextViewResourceId:I

    :goto_0
    return-void

    :cond_0
    iput p3, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mTextViewResourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    iget v0, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
