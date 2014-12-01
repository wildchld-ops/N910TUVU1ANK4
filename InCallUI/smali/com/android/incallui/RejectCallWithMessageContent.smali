.class public Lcom/android/incallui/RejectCallWithMessageContent;
.super Landroid/widget/LinearLayout;
.source "RejectCallWithMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;,
        Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;,
        Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;,
        Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;
    }
.end annotation


# instance fields
.field private RingingCallnumber:Ljava/lang/String;

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCreageMessageIcon:Landroid/widget/ImageView;

.field private mCreageMessageText:Landroid/widget/TextView;

.field private mCreateMessage:Landroid/widget/LinearLayout;

.field protected mOnAnswerMemoClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;

.field protected mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;

.field private mRejectCallWithMessageItemList:Landroid/widget/ListView;

.field private mRejectTitle:Landroid/widget/LinearLayout;

.field private mTag:Ljava/lang/String;

.field private mTextResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoImg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectTitle:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040070

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/RejectCallWithMessageContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/RejectCallWithMessageContent;->setRejectMsgDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/RejectCallWithMessageContent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/RejectCallWithMessageContent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/RejectCallWithMessageContent;->isSmsAvailable()Z

    move-result v0

    return v0
.end method

.method private isSmsAvailable()Z
    .locals 7

    const/4 v0, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private setRejectMsgDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090373

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v10, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configureRejectCallWithMessageSlidingDrawer : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;

    iget-object v8, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    const v9, 0x7f040073

    invoke-direct {v5, p0, v8, v9, p1}, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    new-instance v8, Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;

    invoke-direct {v8, p0}, Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;)V

    invoke-virtual {v5, v8}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->checkMUMCaseForIncoming()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f0e0284

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    const v5, 0x7f0e0283

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v5, "Incoming call is not exist"

    invoke-static {p0, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getNumberPresentation()I

    move-result v5

    sget v8, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v5, v8, :cond_5

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getNumberPresentation()I

    move-result v5

    sget v8, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/RejectCallWithMessageContent;->isSmsAvailable()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    const v8, -0x777778

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    const v8, 0x7f020369

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_10

    move v1, v6

    :cond_a
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasActiveCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVideoCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAllSoundOff "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_b

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_b
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectTitle:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0046

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    const v8, 0x7f020368

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_10
    move v1, v7

    goto/16 :goto_3

    :cond_11
    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectTitle:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getRejectCallWithMessageItemList()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 7

    const v6, 0x7f0e0282

    const v5, 0x7f0e027f

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0280

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoImg:Landroid/widget/ImageView;

    const v1, 0x7f0e0281

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectTitle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoImg:Landroid/widget/ImageView;

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setNextFocusDownId(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setNextFocusUpId(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/incallui/RejectCallWithMessageContent$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/RejectCallWithMessageContent$1;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v1, 0x7f0e0285

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/incallui/RejectCallWithMessageContent$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/RejectCallWithMessageContent$2;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectTitle:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->checkMUMCaseForIncoming()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string v1, "RejectCallWithMessageContent"

    const-string v2, "Disable create message button for KNOX mode"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setOnAnswerMemoClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;

    return-void
.end method
