.class public Lcom/android/incallui/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;,
        Lcom/android/incallui/StatusBarNotifier$NotificationTimer;
    }
.end annotation


# instance fields
.field private mCallState:I

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private final mContext:Landroid/content/Context;

.field private mIsOrientationListenerRegistered:Z

.field private mIsShowingNotification:Z

.field private mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

.field private final mOrientationReceiver:Landroid/content/BroadcastReceiver;

.field private mPreviousAudioState:I

.field private mPreviousMuteState:Z

.field private mPreviousVoicePrivacyState:Z

.field private mRegistrationStateObserver:Landroid/database/ContentObserver;

.field private mSavedContent:I

.field private mSavedContentTitle:Ljava/lang/String;

.field private mSavedIcon:I

.field private mSavedLargeIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$1;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mPreviousAudioState:I

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mPreviousMuteState:Z

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mPreviousVoicePrivacyState:Z

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIsOrientationListenerRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$4;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mOrientationReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->createRegistrationStateObserver()Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/StatusBarNotifier;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/StatusBarNotifier;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/StatusBarNotifier;Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method private declared-synchronized buildAndSendNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 21

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "call: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", originalCall: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCallId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eq v3, v10, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->registerOrientationListener()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v10, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/StatusBarNotifier;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v15}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v8

    invoke-virtual {v15}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v18

    invoke-static {v15}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v19

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplay(Lcom/android/services/telephony/common/Call;)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/services/telephony/common/Call;)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;

    move-result-object v7

    const-wide/high16 v13, -0x8000000000000000L

    move-object/from16 v3, p0

    move/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/incallui/StatusBarNotifier;->checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "feature_skt_tphone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "skip buildAndSendNotification during TPhone mode"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v17

    new-instance v20, Landroid/app/Notification;

    invoke-direct/range {v20 .. v20}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, v20

    iput v4, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v20

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v20

    iput v3, v0, Landroid/app/Notification;->flags:I

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x2

    if-ne v8, v3, :cond_7

    invoke-virtual {v15}, Lcom/android/services/telephony/common/Call;->getConnectTimeReal()J

    move-result-wide v13

    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/services/telephony/common/Call;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual {v15}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    const/4 v10, 0x2

    if-ne v3, v10, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/services/telephony/common/Call;->getConnectTimeReal()J

    move-result-wide v13

    :cond_3
    :goto_1
    new-instance v9, Lcom/android/incallui/InCallQuickPanel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v10, 0x7f040069

    invoke-direct {v9, v3, v10}, Lcom/android/incallui/InCallQuickPanel;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Lcom/android/incallui/InCallQuickPanel;->initInCallQuickPanel(Landroid/content/Context;)V

    move v10, v8

    move-object v11, v6

    move-object v12, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/incallui/InCallQuickPanel;->updateInCallQuickPanel(ILandroid/graphics/Bitmap;Ljava/lang/String;J)V

    move-object/from16 v0, v20

    iput-object v9, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v3, 0x2

    move-object/from16 v0, v20

    iput v3, v0, Landroid/app/Notification;->priority:I

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v15}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v3

    const/4 v10, 0x2

    if-ne v3, v10, :cond_4

    const/4 v3, -0x2

    move-object/from16 v0, v20

    iput v3, v0, Landroid/app/Notification;->priority:I

    :cond_4
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v15}, Lcom/android/incallui/StatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification;Landroid/app/PendingIntent;Lcom/android/services/telephony/common/Call;)V

    :cond_5
    const-string v3, "support_second_screen"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-static {v3, v10, v0}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->doUpdate(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v10

    if-ne v3, v10, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    invoke-static {v3, v10}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "check fullScreenIntent: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    invoke-static {v3, v10}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v3, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_7
    const-wide/16 v13, -0x1

    goto/16 :goto_1
.end method

.method private cancelInCall()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "cancelInCall()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->unRegisterOrientationListener()V

    const-string v1, "support_second_screen"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->doCancel(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;IZ)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "checkForChangeAndSaveData"

    invoke-static {p0, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    if-eqz v4, :cond_9

    :cond_1
    move v0, v2

    :goto_0
    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    if-ne v4, p1, :cond_2

    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    if-ne v4, p2, :cond_2

    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    if-ne v4, p5, :cond_2

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    if-ne v4, p3, :cond_2

    if-eqz v0, :cond_a

    :cond_2
    move v1, v2

    :goto_1
    if-eqz p6, :cond_3

    const-string v3, "Forcing full screen inten"

    invoke-static {v3, v2}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    :cond_3
    iget-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    if-nez v3, :cond_4

    const-string v3, "Showing notification for first time."

    invoke-static {v3, v2}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    :cond_4
    iget v3, p0, Lcom/android/incallui/StatusBarNotifier;->mPreviousAudioState:I

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v4

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mPreviousMuteState:Z

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    if-eq v3, v4, :cond_6

    :cond_5
    const-string v3, "need update Audio Mode."

    invoke-static {v3, v2}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    :cond_6
    iget-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mPreviousVoicePrivacyState:Z

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getVoicePrivacyMode()Z

    move-result v4

    if-eq v3, v4, :cond_7

    const-string v3, "need update due to change of VoicePrivacy State."

    invoke-static {v3, v2}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    :cond_7
    iput p1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    iput p2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    iput p5, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    iput-object p3, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/StatusBarNotifier;->mPreviousAudioState:I

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mPreviousMuteState:Z

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getVoicePrivacyMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mPreviousVoicePrivacyState:Z

    if-eqz v1, :cond_8

    const-string v3, "Data changed.  Showing notification"

    invoke-static {v3, v2}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    :cond_8
    return v1

    :cond_9
    move v0, v3

    goto/16 :goto_0

    :cond_a
    move v1, v3

    goto :goto_1
.end method

.method static clearInCallNotification(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Something terrible happened. Clear all InCall notifications"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private configureFullScreenIntent(Landroid/app/Notification;Landroid/app/PendingIntent;Lcom/android/services/telephony/common/Call;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Setting fullScreenIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const-string v0, "updateInCallNotification: force relaunch..."

    invoke-static {v0, v2}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private createLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "StatusBarNotifier"

    const-string v1, "createLaunchPendingIntent() - NullPointerException"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createRegistrationStateObserver()Landroid/database/ContentObserver;
    .locals 2

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/StatusBarNotifier$2;-><init>(Lcom/android/incallui/StatusBarNotifier;Landroid/os/Handler;)V

    return-object v0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    .locals 1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private getContentString(Lcom/android/services/telephony/common/Call;)I
    .locals 3

    const v0, 0x7f09008e

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_0
    const v0, 0x7f090090

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    const v0, 0x7f09008f

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f09008a

    goto :goto_0
.end method

.method private getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContentTitle : cnapName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getIconToDisplay(Lcom/android/services/telephony/common/Call;)I
    .locals 3

    const v0, 0x7f0204e6

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getVoicePrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0204f0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x7f0204e9

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v1, v2, :cond_3

    const v0, 0x7f0204e7

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getVoicePrivacyMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0204ef

    goto :goto_0

    :cond_4
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isDualCallExist()Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f0204ec

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v1

    if-nez v1, :cond_6

    const v0, 0x7f0204eb

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v0, 0x7f0204ed

    goto :goto_0
.end method

.method private getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    iget-boolean v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020171

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020175

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0242

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0242

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLargeIconToDisplay - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "StatusBarNotifier"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private registerOrientationListener()V
    .locals 3

    const-string v0, "registerOrientationListener"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mOrientationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsOrientationListenerRegistered:Z

    return-void
.end method

.method private showInCall()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showNotification(Lcom/android/services/telephony/common/Call;Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;-><init>(Lcom/android/incallui/StatusBarNotifier;Z)V

    iput-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    :cond_1
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-direct {v4, p0, v2}, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;-><init>(Lcom/android/incallui/StatusBarNotifier;Z)V

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_1
.end method

.method private unRegisterOrientationListener()V
    .locals 2

    const-string v0, "unRegisterOrientationListener"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsOrientationListenerRegistered:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mOrientationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsOrientationListenerRegistered:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5

    const/4 v2, 0x1

    const-string v3, "feature_skt_tphone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "do not updateInCallNotification during TPhone mode"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateInCallNotification(allowFullScreenIntent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v3, v4, :cond_6

    :cond_3
    :goto_1
    if-eqz v2, :cond_7

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/services/telephony/common/Call;Z)V

    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v0, :cond_1

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->clear()V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->schedule()V

    goto :goto_2
.end method


# virtual methods
.method public makeNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 3

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier$3;-><init>(Lcom/android/incallui/StatusBarNotifier;Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public memoryFullAnswerMemoNotification()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "StatusBarNotifier"

    const-string v1, "memoryFullAnswerMemoNotification"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.Answermemo.SHOW_MEMO_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020486

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f090308

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f090309

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public needToShowAsFullScreen(Lcom/android/incallui/CallList;)Z
    .locals 8

    const/4 v5, 0x1

    const-string v6, "needToShowAsFullScreen"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isIncomingCallPopUPEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "IncomingCall pop-up is currently disabled. Show as Full."

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "support_mcid_with_alertinfo"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallCommandClient;->isMcidWithAlertInfo()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "needToShowAsFullScreen isMcidWithAlertInfo"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "isDriveLinkNaviMode"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->enabledKidsModeCallApp()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "enabledKidsModeCallApp"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "IncomingCall pop-up is currently disabled in easy mode. Show as Full."

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v7, "com.android.launcher2.Launcher"

    invoke-static {v6, v7}, Lcom/android/incallui/InCallUtils;->isTopActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Launcher is top"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v7, "com.sec.android.app.easylauncher.Launcher"

    invoke-static {v6, v7}, Lcom/android/incallui/InCallUtils;->isTopActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "EASY Launcher is top"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    const-string v6, "feature_dcm"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v7, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-static {v6, v7}, Lcom/android/incallui/InCallUtils;->isTopActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "docomo LIVE UX Launcher is top"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v7, "com.nttdocomo.android.kidsmode"

    invoke-static {v6, v7}, Lcom/android/incallui/InCallUtils;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "docomo kidmode is top"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v7, "com.nttdocomo.android.kids"

    invoke-static {v6, v7}, Lcom/android/incallui/InCallUtils;->isTopActivityRunningPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "docomo kidmode content is top"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v7, "com.nttdocomo.android.mediaplayer"

    invoke-static {v6, v7}, Lcom/android/incallui/InCallUtils;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "docomo mediaplayer is top"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "isKeyguardLocked"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "!pm.isScreenOn()"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_f

    const-string v6, "mini_popup_call_ui"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getIncomingPopup()Lcom/android/incallui/service/IncomingPopupService;

    move-result-object v6

    if-nez v6, :cond_f

    :cond_e
    const-string v6, "isWaitingCall"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_f
    const-string v6, "feature_chn_duos"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_11

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->isDualConversationState()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->isDualInComingCallState()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_10
    const-string v6, "isDualConversationState or isDualInComingCallState"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "isVideoCall"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->checkMUMCaseForIncoming()Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "checkMUMCaseForIncoming"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "isShowingInCallUi"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_14
    const-string v6, "disable_incoming_call_popup_during_camera"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->isCameraForeground(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "isCameraForeground"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_15
    const-string v6, "feature_chn"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->isStreamingVideoPlay(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v6, "isStreamingVideoPlay"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_16
    const-string v6, "dreams"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "daydream isDreaming"

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->disableIncomingCallPopUPDuringMirrorlink()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "needToShowAsFullScreen: false"

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public onCoverStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2

    const-string v0, "onStateChange"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2

    const-string v0, "updateNotification "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v0, "feature_skt_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "do not updateNotificationAndLaunchIncomingCallUi during TPhone mode"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->needToShowAsFullScreen(Landroid/content/Context;Lcom/android/incallui/CallList;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->blockToUpdate(Z)V

    invoke-static {v4}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->miniModeKeyUpdate(Z)V

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0, v1, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/incallui/StatusBarNotifier;->needToShowAsFullScreen(Lcom/android/incallui/CallList;)Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->showInCall()V

    invoke-direct {p0, v4, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    :cond_5
    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v4, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0, v4, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0
.end method
