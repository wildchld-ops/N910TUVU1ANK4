.class Lcom/android/mms/widget/MmsWidgetService$MmsFactory;
.super Ljava/lang/Object;
.source "MmsWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/MmsWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsFactory"
.end annotation


# static fields
.field private static DRAFT_TEXT_COLOR:I = 0x0

.field private static final MAX_CONVERSATIONS_COUNT:I = 0x19

.field private static THREAD_STATUS_TEXT_COLOR:I


# instance fields
.field private final CONVERSATION_PROJECTION:[Ljava/lang/String;

.field private final mAppWidgetId:I

.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAvatarSize:I

.field private final mContext:Landroid/content/Context;

.field private mConversationCursor:Landroid/database/Cursor;

.field private mDateFormatContentObserver:Landroid/database/ContentObserver;

.field private mFontSize:I

.field private mShouldShowViewMore:Z

.field private mTimeFormatContentObserver:Landroid/database/ContentObserver;

.field private mWidgetType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;-><init>(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$2;-><init>(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "snippet"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "snippet_cs"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "unread_count"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string v1, "Mms/WidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsFactory intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "widget id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->DRAFT_TEXT_COLOR:I

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->THREAD_STATUS_TEXT_COLOR:I

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAvatarSize:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;)V
    .locals 0
    .param p0    # Lcom/android/mms/widget/MmsWidgetService$MmsFactory;

    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->notifyDataChanged()V

    return-void
.end method

.method private getConversationCount()I
    .locals 2

    const-string v0, "Mms/WidgetService"

    const-string v1, "getConversationCount"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultAvatar(I)I
    .locals 2
    .param p1    # I

    rem-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v1, 0x7f02039d

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v1, 0x7f02039e

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v1, 0x7f02039f

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const v1, 0x7f0203a0

    goto :goto_0

    :cond_3
    const v1, 0x7f02039c

    goto :goto_0
.end method

.method private getPrioritySenderCount()I
    .locals 2

    const-string v0, "Mms/WidgetService"

    const-string v1, "getPrioritySenderCount"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getViewMoreConversationsView()Landroid/widget/RemoteViews;
    .locals 5

    const-string v2, "Mms/WidgetService"

    const-string v3, "getViewMoreConversationsView"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400c4

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v2, 0x7f0b03c9

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0b03c7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0b03c8

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v4, 0x7f0c035f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "fromWidget"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const v2, 0x7f0b03c6

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-object v1
.end method

.method private notifyDataChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    const v2, 0x7f0b03c5

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    return-void
.end method

.method private queryAllConversations()Landroid/database/Cursor;
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

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2
.end method

.method private queryPrioritySenders()Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    sget-object v1, Lcom/android/mms/glance/GlanceDBHelper;->PRIORITY_SENDER_COLUMNS:[Ljava/lang/String;

    const-string v4, "pri ASC"

    const/4 v5, 0x2

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/glance/GlanceDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private setAvatar(Landroid/widget/RemoteViews;Landroid/graphics/drawable/Drawable;J)V
    .locals 10
    .param p1    # Landroid/widget/RemoteViews;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # J

    const v9, 0x7f0b03cb

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    long-to-int v4, p3

    invoke-direct {p0, v4}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getDefaultAvatar(I)I

    move-result v4

    invoke-virtual {p1, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iget-object v4, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02039b

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v4, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAvatarSize:I

    iget v5, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAvatarSize:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2, v8, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "Mms/WidgetService"

    const-string v4, "getCount"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    monitor-exit v4

    :goto_0
    return v1

    :cond_0
    iget v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mWidgetType:I

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    iget-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v1, v0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getPrioritySenderCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400c4

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f0b03c9

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0b03c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0b03c8

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0c04aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public getPriorityViewAt(I)Landroid/widget/RemoteViews;
    .locals 18
    .param p1    # I

    const-string v13, "Mms/WidgetService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPriorityViewAt position="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0400c5

    invoke-direct {v10, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    invoke-static {v1, v13}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const v13, 0x7f0b01f5

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_0
    const v13, 0x7f0b01f5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mFontSize:I

    int-to-float v15, v15

    invoke-virtual {v10, v13, v14, v15}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v8, v9}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->setAvatar(Landroid/widget/RemoteViews;Landroid/graphics/drawable/Drawable;J)V

    const/4 v11, 0x0

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    invoke-static {v13, v1, v14}, Lcom/android/mms/data/Conversation;->getConversationByAddress(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_5

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v5, v13, v14}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c000c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_1
    const/4 v13, 0x2

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v13, 0x3

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    const v13, 0x7f0b006e

    invoke-virtual {v10, v13, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v13, 0x7f0b006e

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mFontSize:I

    int-to-float v15, v15

    invoke-virtual {v10, v13, v14, v15}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-eqz v13, :cond_7

    const v13, 0x7f0b0151

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v14, v6, v7}, Lcom/android/mms/ui/MessageUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v13, 0x7f0b0151

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v13, 0x7f0b0151

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mFontSize:I

    int-to-float v15, v15

    invoke-virtual {v10, v13, v14, v15}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :goto_1
    if-lez v12, :cond_8

    const v13, 0x7f0b014f

    const-string v14, "%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v13, 0x7f0b014f

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v13, "android.intent.action.SENDTO"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "com.android.mms"

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v13

    if-eqz v13, :cond_4

    const/high16 v13, 0x34000000

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_4
    const-string v13, "sms"

    const/4 v14, 0x0

    invoke-static {v13, v1, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v13, "from_widget"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v13, 0x7f0b03ca

    invoke-virtual {v10, v13, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-object v10

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00f3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v13

    :cond_7
    const v13, 0x7f0b0151

    const/4 v14, 0x4

    invoke-virtual {v10, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    :cond_8
    const v13, 0x7f0b014f

    const/4 v14, 0x4

    invoke-virtual {v10, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 14
    .param p1    # I

    const-string v8, "Mms/WidgetService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getViewAt position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v8

    if-lt p1, v8, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v5

    monitor-exit v9

    :goto_0
    return-object v5

    :cond_1
    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v8, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Mms/WidgetService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to move to position: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v5

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    :try_start_1
    iget v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mWidgetType:I

    if-eqz v8, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getPriorityViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v5

    monitor-exit v9

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-static {v8, v10}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0400c4

    invoke-direct {v5, v8, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v8, 0x7f0b004a

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewFingerHovered(IZ)V

    const v8, 0x7f0b006e

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewFingerHovered(IZ)V

    const v8, 0x7f0b03c9

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v8, 0x7f0b03c7

    const/16 v10, 0x8

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasSending()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasPending()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_8

    :cond_4
    const v8, 0x7f0b0151

    const/16 v10, 0x8

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v8

    if-eqz v8, :cond_9

    const v8, 0x7f0b004a

    iget-object v10, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c013b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    const v8, 0x7f0b004a

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mFontSize:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v10, v11}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_10

    const v8, 0x7f0b006e

    const/4 v10, 0x4

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_3
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v6

    if-lez v6, :cond_12

    const v8, 0x7f0b014f

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v8, 0x7f0b014f

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_4
    const/4 v7, 0x1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v8

    if-eqz v8, :cond_13

    const v8, 0x7f0b0150

    iget-object v10, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v11, 0x7f0c000a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v8, 0x7f0b0150

    sget v10, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->DRAFT_TEXT_COLOR:I

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :goto_5
    if-eqz v7, :cond_17

    const v8, 0x7f0b0150

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mFontSize:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v10, v11}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v8, 0x7f0b0150

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_6
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x34000000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_5
    const-string v8, "thread_id"

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    invoke-virtual {v0, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/mms/data/Conversation;->isCmasPresidential(I)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "cmas"

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "fromWidget"

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    const v8, 0x7f0b03c6

    invoke-virtual {v5, v8, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    monitor-exit v9

    goto/16 :goto_0

    :cond_8
    const v8, 0x7f0b0151

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v8, 0x7f0b0151

    iget-object v10, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v8, 0x7f0b0151

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mFontSize:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v10, v11}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_1

    :cond_9
    const v8, 0x7f0b004a

    iget-object v10, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_b

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Contact;

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v8, "CBmessages"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0c0100

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_c
    const v8, 0x7f0b004a

    invoke-virtual {v5, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    const-string v8, "Pushmessage"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0c0163

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_e
    const-string v8, "Unknown address"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0c013b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_f
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v2, "Verizon Global Support"

    goto :goto_7

    :cond_10
    const v8, 0x7f0b006e

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_11

    const v8, 0x7f0b006e

    iget-object v10, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v11, 0x7f0c01c3

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_8
    const v8, 0x7f0b006e

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mFontSize:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v10, v11}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_3

    :cond_11
    const v8, 0x7f0b006e

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    :cond_12
    const v8, 0x7f0b014f

    const/16 v10, 0x8

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    :cond_13
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v8

    if-eqz v8, :cond_14

    const v8, 0x7f0b0150

    iget-object v10, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0137

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v8, 0x7f0b0150

    sget v10, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->DRAFT_TEXT_COLOR:I

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_5

    :cond_14
    const v8, 0x7f0b0150

    sget v10, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->THREAD_STATUS_TEXT_COLOR:I

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasSending()Z

    move-result v8

    if-eqz v8, :cond_15

    const v8, 0x7f0b0150

    iget-object v10, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0136

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasPending()Z

    move-result v8

    if-eqz v8, :cond_16

    const v8, 0x7f0b0150

    iget-object v10, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v11, 0x7f0c009d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_17
    const v8, 0x7f0b0150

    const/16 v10, 0x8

    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "Mms/WidgetService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    const-string v2, "date_format"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDataSetChanged()V
    .locals 5

    const-string v2, "Mms/WidgetService"

    const-string v3, "onDataSetChanged"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MmsWidget"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mWidgetType:I

    :goto_0
    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findIndexOfWidgetFontSize(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getWidgetFontSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mFontSize:I

    const-string v2, "Mms/WidgetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataSetChanged fontIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fontSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mFontSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    :cond_0
    iget v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mWidgetType:I

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryAllConversations()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mWidgetType:I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryPrioritySenders()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "Mms/WidgetService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/widget/MmsWidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3
    .param p1    # Lcom/android/mms/data/Contact;

    const-string v0, "Mms/WidgetService"

    const-string v1, "onUpdate from Contact"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    const v2, 0x7f0b03c5

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    return-void
.end method
