.class public Lcom/android/mms/widget/MmsWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MmsWidgetProvider.java"


# static fields
.field public static final ACTION_FAV_WIDGET_CHANGE:Ljava/lang/String; = "Change"

.field public static final ACTION_FAV_WIDGET_NONE:Ljava/lang/String; = "NONE"

.field public static final ACTION_FAV_WIDGET_UPDATE_ALL:Ljava/lang/String; = "WIDGET_UPDATE_ALL"

.field public static final ACTION_MODE:Ljava/lang/String; = "ACTION_MODE"

.field public static final ACTION_NOTIFY_DATASET_CHANGED:Ljava/lang/String; = "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

.field private static final CHECK_CONVERSATIONS_COUNT:I = 0x1

.field private static final EXTRA_CHANGE_WIDGET_TYPE:Ljava/lang/String; = "changeWidgetType"

.field public static final EXTRA_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final EXTRA_CONTACT_NUMBER:Ljava/lang/String; = "contact_number"

.field public static final EXTRA_FROM_WIDGET:Ljava/lang/String; = "from_widget"

.field public static final EXTRA_MESSAGE_INDEX:Ljava/lang/String; = "message_index"

.field public static final EXTRA_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final MMS_WIDGET:Ljava/lang/String; = "MmsWidget"

.field static final MODE_MASK_PICKER:I = -0x80000000

.field static final MODE_MASK_SHOW_NUMBER_OF_CONTACTS:I = 0x800000

.field static final MODE_MASK_SHOW_PHOTOS:I = 0x8000000

.field public static final PRIORITY_WIDGET:Ljava/lang/String; = "PriorityWidget"

.field static final SUMMARY_DISPLAY_NAME_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_HAS_EMAIL_COLUMN_INDEX:I = 0x6

.field static final SUMMARY_HAS_PHONE_NUMBER_COLUMN_INDEX:I = 0x5

.field static final SUMMARY_HAS_Phone_TYPE_COLUMN_INDEX:I = 0x7

.field static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field static final SUMMARY_RAW_CONTACTS_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/MmsWidgetProvider"

.field public static final WIDGET_TYPE_ALL_MESSAGES:I = 0x0

.field public static final WIDGET_TYPE_PRIORITY_SENDERS:I = 0x1

.field public static invalidationFlag:Z

.field private static mCursor:Landroid/database/Cursor;

.field private static sCurrentWidget:Ljava/lang/String;

.field public static sWidgetCount:I


# instance fields
.field mContext:Landroid/content/Context;

.field remote:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/widget/MmsWidgetProvider;->invalidationFlag:Z

    const-string v0, "MmsWidget"

    sput-object v0, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    sput v1, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static getCurrentWidget()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    return-object v0
.end method

.method public static getWidgetCount()I
    .locals 1

    sget v0, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    return v0
.end method

.method public static notifyDatasetChanged(Landroid/content/Context;)V
    .locals 3

    const-string v1, "Mms/MmsWidgetProvider"

    const-string v2, "notifyDatasetChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static notifyDefaultAppChanged(Landroid/content/Context;)V
    .locals 7

    const-string v4, "Mms/MmsWidgetProvider"

    const-string v5, "notifyDefaultAppChanged"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    const-string v4, "MmsWidget"

    sget-object v5, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Mms/MmsWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "don\'t need to update widget currentWidget="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aget v4, v0, v2

    invoke-static {p0, v4}, Lcom/android/mms/widget/MmsWidgetProvider;->updateWidget(Landroid/content/Context;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private queryAllConversations(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/mms/data/Conversation;->NGM_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasConversationListQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasConversationListQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date DESC,_id DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sIntegratedThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_INTEGRATED_THREADS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "date DESC,_id DESC"

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2
.end method

.method public static refreshWidgetCount(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    sput v3, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    const-string v3, "Mms/MmsWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshWidgetCount sWidgetCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v3, v2

    goto :goto_0
.end method

.method private static updateWidget(Landroid/content/Context;I)V
    .locals 14

    const v13, 0x7f0b03c5

    const v12, 0x7f0b00a4

    const/4 v11, 0x1

    const/high16 v10, 0x8000000

    const/4 v9, 0x0

    const-string v6, "Mms/MmsWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateWidget appWidgetId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0400c3

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/widget/MmsWidgetService;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "appWidgetId"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v4, p1, v13, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    const-string v6, "MmsWidget"

    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f0b03c2

    const v7, 0x7f0c03d1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v6, 0x7f0c00f3

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v12, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "from_widget"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v9, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v13, v6}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    :goto_0
    const-string v6, "MmsWidget"

    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "from_widget"

    invoke-virtual {v0, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v6, 0x7f0b03c3

    invoke-static {p0, v9, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v6, 0x7f0b03c3

    invoke-virtual {v4, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f0b03c4

    invoke-virtual {v4, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/widget/WidgetPreferenceActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x30000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v6, 0x7f0b01ba

    invoke-static {p0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v6, 0x7f0b01bc

    invoke-virtual {v4, v13, v6}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    const-string v6, "MmsWidget"

    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/mms/widget/MmsWidgetProvider;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/mms/widget/MmsWidgetProvider;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    const-string v6, "PriorityWidget"

    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p0}, Lcom/android/mms/glance/GlanceUtils;->getPrioritySenderCount(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_4

    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v4, v12, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "changeWidgetType"

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v6, 0x7f0b03c2

    invoke-static {p0, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void

    :cond_2
    const v6, 0x7f0b03c2

    const v7, 0x7f0c0444

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v6, 0x7f0c044d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v12, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v9, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v13, v6}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_3
    const v6, 0x7f0b03c3

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f0b03c4

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v4, v12, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    invoke-static {p1}, Lcom/android/mms/widget/MmsWidgetProvider;->refreshWidgetCount(Landroid/content/Context;)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mms/MmsWidgetProvider"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mms/MmsWidgetProvider"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/mms/widget/MmsWidgetProvider;->refreshWidgetCount(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Mms/MmsWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    const-string v3, "changeWidgetType"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MmsWidget"

    sget-object v4, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PriorityWidget"

    sput-object v3, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    :goto_0
    sget-object v3, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/mms/widget/WidgetPreferenceActivity;->setCurrentWidget(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "Mms/MmsWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive new sCurrentWidget="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/mms/widget/MmsWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :cond_0
    const v3, 0x7f0b03c5

    invoke-virtual {v2, v1, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    :goto_1
    return-void

    :cond_1
    const-string v3, "MmsWidget"

    sput-object v3, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    const-string v1, "MmsWidget"

    sget-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->sCurrentWidget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/widget/MmsWidgetProvider;->queryAllConversations(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Lcom/android/mms/widget/MmsWidgetProvider;->mCursor:Landroid/database/Cursor;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    aget v1, p3, v0

    invoke-static {p1, v1}, Lcom/android/mms/widget/MmsWidgetProvider;->updateWidget(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
