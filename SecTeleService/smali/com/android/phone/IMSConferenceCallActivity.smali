.class public Lcom/android/phone/IMSConferenceCallActivity;
.super Landroid/app/ListActivity;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IMSConferenceCallActivity$ActionModeCallback;,
        Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;,
        Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;,
        Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;
    }
.end annotation


# static fields
.field private static activity:Lcom/android/phone/IMSConferenceCallActivity;

.field public static bIsSameUser:Z

.field private static mDeleteList:Landroid/widget/ListView;

.field private static mParticipantsList:Landroid/widget/ListView;

.field private static mToastObj:Landroid/widget/Toast;


# instance fields
.field private CONF_NO_SPLITSTRING:Ljava/lang/String;

.field private final ENABLE_TOAST:I

.field private final LOG_TAG:Ljava/lang/String;

.field private ORIGIN_CONF_NO_SPLITSTRING:Ljava/lang/String;

.field private final PHONE_NUMBER:Ljava/lang/String;

.field private final REQUEST_CALLERS:I

.field private final REQUEST_PHONE_MULTI:I

.field private final SELECTED_USERS:Ljava/lang/String;

.field private app:Lcom/android/phone/PhoneGlobals;

.field private bToastShowInProgress:Z

.field private conn:Lcom/android/internal/telephony/Connection;

.field private forcefinishing:Z

.field private icCM:Lcom/android/phone/IMSConferenceCallMgr;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private intent:Landroid/content/Intent;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAddUser:Z

.field private mBeforeText:Ljava/lang/String;

.field private mButton_Send:Landroid/widget/Button;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mCheckedItemPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContactButton:Landroid/widget/ImageButton;

.field private mDeleteOption:Landroid/view/MenuItem;

.field private mDisableCallers:Z

.field private mEnableCheckedView:Z

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

.field private mIsConfTypeVoice:Z

.field private mIsForegroundActivity:Z

.field private mIsSelectAllmode:Z

.field private mLayoutDeleteMode:Landroid/view/View;

.field private mLayoutParticipantsMode:Landroid/view/View;

.field private mLongClickActionMode:Z

.field private mModeCallback:Lcom/android/phone/IMSConferenceCallActivity$ActionModeCallback;

.field private mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlusButton:Landroid/widget/ImageButton;

.field private mPreviousCheckedNumber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousDeletableCount:I

.field private mPreviousState:I

.field private mRecipientsText:Landroid/widget/AutoCompleteTextView;

.field private mScreenState:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheck:Landroid/view/View;

.field private mSelectedNumber:Ljava/lang/String;

.field private sTitleVal:Ljava/lang/String;

.field textwatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/IMSConferenceCallActivity;->activity:Lcom/android/phone/IMSConferenceCallActivity;

    sput-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/IMSConferenceCallActivity;->bIsSameUser:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/16 v0, 0x67

    iput v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->ENABLE_TOAST:I

    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->bToastShowInProgress:Z

    const-string v0, "[IMSConferenceCallActivity]"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->LOG_TAG:Ljava/lang/String;

    iput v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->REQUEST_CALLERS:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->REQUEST_PHONE_MULTI:I

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDisableCallers:Z

    const-string v0, "SELECTED_USERS"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->SELECTED_USERS:Ljava/lang/String;

    const-string v0, "PHONE_NUMBER_FROM_DIALER"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->PHONE_NUMBER:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->app:Lcom/android/phone/PhoneGlobals;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->conn:Lcom/android/internal/telephony/Connection;

    const-string v0, ","

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->CONF_NO_SPLITSTRING:Ljava/lang/String;

    const-string v0, "$"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->ORIGIN_CONF_NO_SPLITSTRING:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mBeforeText:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsForegroundActivity:Z

    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->forcefinishing:Z

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    iput v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    iput v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousState:I

    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLongClickActionMode:Z

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mModeCallback:Lcom/android/phone/IMSConferenceCallActivity$ActionModeCallback;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mSelectedNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsSelectAllmode:Z

    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mEnableCheckedView:Z

    iput v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousDeletableCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousCheckedNumber:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/IMSConferenceCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IMSConferenceCallActivity$1;-><init>(Lcom/android/phone/IMSConferenceCallActivity;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/IMSConferenceCallActivity$5;

    invoke-direct {v0, p0}, Lcom/android/phone/IMSConferenceCallActivity$5;-><init>(Lcom/android/phone/IMSConferenceCallActivity;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->textwatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private InitiateConfCall()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->InitiateConfCall(Ljava/lang/String;)V

    return-void
.end method

.method private InitiateConfCall(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    const-string v2, "[InitiateConfCall] enter"

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr;->getDialedParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallActivity;->makeNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v3, v2}, Lcom/android/phone/IMSConferenceCallMgr;->prepareDial(Lcom/android/internal/telephony/Connection;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[InitiateConfCall] number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-nez v2, :cond_1

    :goto_1
    invoke-static {v1, p1, v0}, Lcom/android/phone/PhoneUtils;->addUserToConfCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)I

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->finish()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v3, p1, v2}, Lcom/android/phone/IMSConferenceCallMgr;->prepareDialNumber(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-nez v2, :cond_3

    const-string v2, "videocall"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getCallerListCount()I

    move-result v2

    if-le v2, v0, :cond_5

    const-string v2, "IS_CONF_CALL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    :goto_3
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[InitiateConfCall] phoneIsInUse :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->phoneIsInUse()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->phoneIsInUse()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "Active Call running!! Do not allow conference Call as "

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090977

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f09097d

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090828

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_7
    const-string v2, "No Active Call running!! Allow Conference Call"

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMgr;->setDirectConfCall(Z)V

    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method private InitiateConfCallUI()V
    .locals 8

    const v1, 0x102000a

    const/4 v2, 0x0

    const-string v0, "inside InitiateConfCallUI()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mActionBar:Landroid/app/ActionBar;

    const v0, 0x7f0a0110

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLayoutParticipantsMode:Landroid/view/View;

    const v0, 0x7f0a0118

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLayoutDeleteMode:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLayoutParticipantsMode:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLayoutDeleteMode:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    const v0, 0x7f0a0119

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mSelectAll:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011a

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;

    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0114

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->show_SendButton()V

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->textwatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b007a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b007b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    new-instance v6, Lcom/android/phone/RecipientsAutoCompleteCursorAdapter;

    invoke-direct {v6, p0, v7}, Lcom/android/phone/RecipientsAutoCompleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;-><init>(Lcom/android/phone/IMSConferenceCallActivity;Lcom/android/phone/IMSConferenceCallMgr;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/IMSConferenceCallActivity$3;

    invoke-direct {v1, p0}, Lcom/android/phone/IMSConferenceCallActivity$3;-><init>(Lcom/android/phone/IMSConferenceCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v0, Lcom/android/phone/IMSConferenceCallActivity$ActionModeCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/IMSConferenceCallActivity$ActionModeCallback;-><init>(Lcom/android/phone/IMSConferenceCallActivity;Lcom/android/phone/IMSConferenceCallActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mModeCallback:Lcom/android/phone/IMSConferenceCallActivity$ActionModeCallback;

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mModeCallback:Lcom/android/phone/IMSConferenceCallActivity$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/IMSConferenceCallActivity$4;

    invoke-direct {v1, p0}, Lcom/android/phone/IMSConferenceCallActivity$4;-><init>(Lcom/android/phone/IMSConferenceCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v0, :cond_2

    const v0, 0x7f09096e

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    const v0, 0x7f090729

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/phone/IMSConferenceCallActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->bToastShowInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/IMSConferenceCallActivity;I)V
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallActivity;->setScreenState(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/IMSConferenceCallActivity;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/IMSConferenceCallActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mBeforeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/phone/IMSConferenceCallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/phone/IMSConferenceCallActivity;I)V
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/IMSConferenceCallActivity;)Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/IMSConferenceCallActivity;Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;)Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/phone/IMSConferenceCallActivity;)I
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousDeletableCount:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/phone/IMSConferenceCallActivity;I)I
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousDeletableCount:I

    return p1
.end method

.method static synthetic access$200()Lcom/android/phone/IMSConferenceCallActivity;
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->activity:Lcom/android/phone/IMSConferenceCallActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/IMSConferenceCallActivity;)V
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->setDeleteOption()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/IMSConferenceCallActivity;)V
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->show_SendButton()V

    return-void
.end method

.method static synthetic access$2200()Landroid/widget/ListView;
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/IMSConferenceCallActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousCheckedNumber:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/IMSConferenceCallActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mEnableCheckedView:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/phone/IMSConferenceCallActivity;)I
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousState:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/phone/IMSConferenceCallActivity;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/IMSConferenceCallActivity;Landroid/view/View;I)V
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/phone/IMSConferenceCallActivity;->onAdapterButtonClicked(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/IMSConferenceCallActivity;)V
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->deleteConfCallerList()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/IMSConferenceCallActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/phone/IMSConferenceCallActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/phone/IMSConferenceCallActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/phone/IMSConferenceCallActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/phone/IMSConferenceCallActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/phone/IMSConferenceCallActivity;)Z
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/IMSConferenceCallActivity;)Z
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/IMSConferenceCallActivity;)I
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/IMSConferenceCallActivity;)Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/IMSConferenceCallActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mSelectedNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/IMSConferenceCallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mSelectedNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/IMSConferenceCallActivity;)Z
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLongClickActionMode:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/IMSConferenceCallActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLongClickActionMode:Z

    return p1
.end method

.method private addCallerList(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->addCallerList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addCallerList(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v0, "inside addCallerList()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    move v3, v4

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v0, 0x7f09082d

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(I)V

    move v0, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v5, v0}, Lcom/android/phone/IMSConferenceCallMgr;->alreadyAddedUser(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v5}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    sget-object v6, Lcom/android/phone/IMSConferenceCallMgr$State;->IDLE:Lcom/android/phone/IMSConferenceCallMgr$State;

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/phone/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addCallerList]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v1, :cond_4

    const v0, 0x7f090727

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(I)V

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->updateScreen()V

    return-void

    :cond_4
    if-eqz v0, :cond_3

    const v0, 0x7f090725

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v4

    move v1, v4

    goto :goto_2
.end method

.method private deleteConfCallerList()V
    .locals 7

    sget-object v5, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v2

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    sget-object v5, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v5, v3}, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->getItem(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v6, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    invoke-virtual {v6, v5}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[IMSConferenceCallActivity]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getCallerListCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCallerListCount] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    return v0
.end method

.method private getInitialListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v1, "[getInitialListFromIntent] enter"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "DEL_USER_FRM_CONF"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "ConferenceFromContacts"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "ConferenceFromCallLog"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    const-string v1, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SELECTED_USERS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "SELECTED_USERS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    const-string v1, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getMaxUserCount()I
    .locals 3

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxUserCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    return v0
.end method

.method private isDeviceOnLTE()Z
    .locals 4

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Type returned for TelephonyManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadTabs()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "isGroupConference"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string v1, "maxRecipientCount"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "[IMSConferenceCallActivity]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, -0x1

    move-object v0, p1

    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside makeNumber() : formattedString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeNumber(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v1, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->CONF_NO_SPLITSTRING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->ORIGIN_CONF_NO_SPLITSTRING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private onAdapterButtonClicked(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "[IMSConferenceCallActivity]"

    const-string v1, "btn_dial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0, p2}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "[IMSConferenceCallActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onAdapterButtonClicked] btn_dial - position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->InitiateConfCall(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0124
        :pswitch_0
    .end packed-switch
.end method

.method private phoneIsInUse()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasCSVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDeleteOption()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setElapsedTime(Landroid/widget/TextView;J)V
    .locals 2
    .param p1    # Landroid/widget/TextView;
    .param p2    # J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2, p3}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setScreenState(I)V
    .locals 3
    .param p1    # I

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    iput v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousState:I

    iput p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    iget v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLayoutParticipantsMode:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLayoutDeleteMode:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->updateScreen()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLayoutParticipantsMode:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLayoutDeleteMode:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showEmptyToast(I)V
    .locals 2
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    :goto_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 2
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private show_SendButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    const v1, 0x7f09096e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    const v1, 0x7f090729

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateUIForSelectedCallerCount()V
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getCallerListCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public deInitializeMgr()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->stopTimer()V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->setActivity(Lcom/android/phone/IMSConferenceCallActivity;)V

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->cleanParticipantsList()V

    :cond_1
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    :cond_2
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKeyEvent(event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public initializeMgr(Lcom/android/phone/IMSConferenceCallMgr;)V
    .locals 2
    .param p1    # Lcom/android/phone/IMSConferenceCallMgr;

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    sget-object v1, Lcom/android/phone/IMSConferenceCallActivity;->activity:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->setActivity(Lcom/android/phone/IMSConferenceCallActivity;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->resetLastLog()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const v9, 0x7f090728

    const/16 v8, 0x3b

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult() : requestCode(REQUEST_CALLERS)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); resultCode(RESULT_OK)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-ne p1, v2, :cond_2

    if-ne p2, v6, :cond_2

    iput-boolean v7, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDisableCallers:Z

    sget-boolean v0, Lcom/android/phone/IMSConferenceCallActivity;->bIsSameUser:Z

    if-eqz v0, :cond_0

    sput-boolean v7, Lcom/android/phone/IMSConferenceCallActivity;->bIsSameUser:Z

    invoke-direct {p0, v9}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(I)V

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside onActivityResult() : RESULT_OK ->USER_LIST = size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->addCallerList(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    if-ne p2, v6, :cond_6

    const-string v0, "[IMSConferenceCallActivity]"

    const-string v2, "onActivityResult(REQUEST_PHONE_MULTI & RESULT_OK)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v6, :cond_3

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, "P"

    const-string v5, ","

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "W"

    const-string v5, ";"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_5

    invoke-direct {p0, v9}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(I)V

    :cond_5
    iput-boolean v7, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDisableCallers:Z

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->addCallerList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "onActivityResult() : don\'t doing anything!!!"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;

    const v8, 0x7f090729

    const v7, 0x7f090726

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v2, "[IMSConferenceCallActivity]"

    const-string v3, "add contact for VT-conference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v2, :cond_1

    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x7f09096e

    invoke-virtual {p0, v3}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->loadTabs()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v2, :cond_3

    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x7f09096e

    invoke-virtual {p0, v3}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDisableCallers:Z

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->addCallerList(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const v2, 0x7f09072c

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(I)V

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "[IMSConferenceCallActivity]"

    const-string v3, "btnSend"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v2

    if-ge v2, v5, :cond_6

    const v2, 0x7f09072e

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallActivity;->showEmptyToast(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->InitiateConfCall()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0113
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const v7, 0x7f090725

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/phone/IMSConferenceCallActivity;->setRequestedOrientation(I)V

    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/IMSConferenceCallActivity;->forcefinishing:Z

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    const-string v2, "CONF_TYPE_VOICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    const-string v2, "CONF_TYPE_VOICE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "inside onCreate() : cannot proceed group videocall. Here is Roaming Area"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_3

    const v1, 0x7f09097a

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallActivity;->forcefinishing:Z

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->finish()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const v1, 0x7f09058e

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSimCardReady()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Inside onCreate() : Not on LTE..returning"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_5

    const v1, 0x7f090979

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_2
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallActivity;->forcefinishing:Z

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->finish()V

    goto :goto_1

    :cond_5
    const v1, 0x7f090722

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->isDeviceOnLTE()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "Inside onCreate() : Not on LTE..returning"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_7

    const v1, 0x7f09097b

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_3
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallActivity;->forcefinishing:Z

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->finish()V

    goto :goto_1

    :cond_7
    const v1, 0x7f090732

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    sput-object p0, Lcom/android/phone/IMSConferenceCallActivity;->activity:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->initializeMgr(Lcom/android/phone/IMSConferenceCallMgr;)V

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    const-string v2, "ADD_USER_TO_CONF"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    const-string v2, "ADD_USER_TO_CONF"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    :cond_9
    :goto_4
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDisableCallers:Z

    const-string v1, "inside onCreate()"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->InitiateConfCallUI()V

    invoke-direct {p0, v5}, Lcom/android/phone/IMSConferenceCallActivity;->setScreenState(I)V

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    if-ge v1, v6, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IMSConferenceCallMgr$State;->WAITING:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/phone/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    :cond_a
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getActiveCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/IMSConferenceCallMgr;->startTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v2

    if-ge v1, v2, :cond_d

    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    goto :goto_4

    :cond_d
    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->finish()V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isAudioConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_f
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v2

    if-ge v1, v2, :cond_10

    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    goto/16 :goto_4

    :cond_10
    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->finish()V

    goto/16 :goto_1

    :cond_11
    iput-boolean v5, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    goto/16 :goto_4

    :cond_12
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->getInitialListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->addCallerList(Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0238

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->setDeleteOption()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    const-string v0, "inside ondestroy()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->forcefinishing:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy - activity was forcely finished"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    :cond_1
    sput-object v2, Lcom/android/phone/IMSConferenceCallActivity;->activity:Lcom/android/phone/IMSConferenceCallActivity;

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->app:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->deInitializeMgr()V

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    sput-object v2, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    sput-object v2, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    sput-object v2, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsList:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLayoutParticipantsMode:Landroid/view/View;

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mLayoutDeleteMode:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->setScreenState(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a0238 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    const-string v0, "inside onPause()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsForegroundActivity:Z

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const-string v0, "onPrepareOptionsMenu"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->setDeleteOption()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    const-string v0, "inside onResume()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsForegroundActivity:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/IMSConferenceCallActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IMSConferenceCallActivity$2;-><init>(Lcom/android/phone/IMSConferenceCallActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->updateScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsSelectAllmode:Z

    :goto_1
    sget-object v1, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mIsSelectAllmode:Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setHolderCtl(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 3
    .param p1    # Lcom/android/phone/IMSConferenceCallMgr$Participant;

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showContactImage:Z

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v2, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v2, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showButton:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showContactImage:Z

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showButton:Z

    goto :goto_0
.end method

.method public setHolderData(Landroid/view/View;Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p3}, Lcom/android/phone/IMSConferenceCallActivity;->setHolderCtl(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    const v1, 0x7f09096f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showContactImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mCheckedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mCheckedView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mEnableCheckedView:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mCheckedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setParticipantHolder(Landroid/view/View;Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;)V
    .locals 2

    const/16 v1, 0x8

    const v0, 0x7f0a011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mLayoutListItem:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showContactImage:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mCheckedView:Landroid/view/View;

    const v0, 0x7f0a0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f0a011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    const v0, 0x7f0a0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v0, 0x7f0a0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showButton:Z

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setStatusText(Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    iget-wide v1, p2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mElapsedTime:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/IMSConferenceCallActivity;->setElapsedTime(Landroid/widget/TextView;J)V

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isCONNECTING()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f090970

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isDISCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f090971

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isFAILED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f090972

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public showParticipantHolder(Landroid/view/View;Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;
    .param p3    # Lcom/android/phone/IMSConferenceCallMgr$Participant;

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showButton:Z

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$State;->isWAITING()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mAddUser:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/phone/IMSConferenceCallActivity;->setStatusText(Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isWAITING()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isIDLE()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isCONNECTING()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public storeCheckedItem()V
    .locals 5

    iget v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousCheckedNumber:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sget-object v3, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v3, v2}, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->getItem(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousCheckedNumber:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v4, v2}, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->getItem(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallActivity;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateDeletableParticipant()V
    .locals 3

    iget v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v0

    iget v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mPreviousDeletableCount:I

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public updateScreen()V
    .locals 1

    const-string v0, "updateScreen  enter"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallActivity;->updateUIForSelectedCallerCount()V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallActivity$ParticipantsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x7f090a37

    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallActivity;->mActionbarTitle:Landroid/widget/TextView;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sget-object v2, Lcom/android/phone/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method
