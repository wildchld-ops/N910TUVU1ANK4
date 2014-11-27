.class public Lcom/mobeam/barcodeService/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:[I

.field private static synthetic d:[I


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mobeam/barcodeService/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobeam/barcodeService/b/a;->b:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobeam/barcodeService/b/a;->c:[I

    return-void

    :array_0
    .array-data 4
        0x7f02000b
        0x7f020006
        0x7f020000
        0x7f020001
        0x7f020002
        0x7f020003
        0x7f020004
        0x7f020005
        0x7f020007
        0x7f020008
        0x7f020009
        0x7f02000a
        0x7f02000c
        0x7f02000d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobeam/barcodeService/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(I)I
    .locals 2

    if-lez p0, :cond_0

    :goto_0
    return p0

    :cond_0
    neg-int v0, p0

    sget-object v1, Lcom/mobeam/barcodeService/b/a;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    sget-object v1, Lcom/mobeam/barcodeService/b/a;->c:[I

    aget p0, v1, v0

    goto :goto_0
.end method

.method private a(Lcom/mobeam/mbss/service/BSANotification$IntentData;)Landroid/app/PendingIntent;
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Landroid/content/Intent;

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification$IntentData;->action:Ljava/lang/String;

    iget-object v0, p1, Lcom/mobeam/mbss/service/BSANotification$IntentData;->url:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p1, Lcom/mobeam/mbss/service/BSANotification$IntentData;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mobeam/mbss/service/BSANotification$IntentData;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p1, Lcom/mobeam/mbss/service/BSANotification$IntentData;->extra:Lcom/mobeam/mbss/service/Props;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mobeam/mbss/service/BSANotification$IntentData;->extra:Lcom/mobeam/mbss/service/Props;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/mobeam/barcodeService/b/a;->a:Landroid/content/Context;

    invoke-static {v0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p1, Lcom/mobeam/mbss/service/BSANotification$IntentData;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification$IntentData;->extra:Lcom/mobeam/mbss/service/Props;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mobeam/barcodeService/b/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed loading image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/mobeam/barcodeService/b/a;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mobeam/mbss/service/BSANotification$BigType;->values()[Lcom/mobeam/mbss/service/BSANotification$BigType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mobeam/mbss/service/BSANotification$BigType;->Inbox:Lcom/mobeam/mbss/service/BSANotification$BigType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mobeam/mbss/service/BSANotification$BigType;->Picture:Lcom/mobeam/mbss/service/BSANotification$BigType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mobeam/mbss/service/BSANotification$BigType;->Text:Lcom/mobeam/mbss/service/BSANotification$BigType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/mobeam/barcodeService/b/a;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/mobeam/mbss/service/BSANotification;)V
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/mobeam/barcodeService/b/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received notification: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/mobeam/barcodeService/b/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/mobeam/mbss/service/BSANotification;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mobeam/mbss/service/BSANotification;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mobeam/mbss/service/BSANotification;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mobeam/mbss/service/BSANotification;->largeIcon:Ljava/lang/String;

    invoke-static {v2}, Lcom/mobeam/barcodeService/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, p1, Lcom/mobeam/mbss/service/BSANotification;->icon:I

    invoke-static {v2}, Lcom/mobeam/barcodeService/b/a;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, p1, Lcom/mobeam/mbss/service/BSANotification;->defaults:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/mobeam/mbss/service/BSANotification;->autoCancel:Z

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->light:Lcom/mobeam/mbss/service/BSANotification$Light;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->light:Lcom/mobeam/mbss/service/BSANotification$Light;

    iget v1, v1, Lcom/mobeam/mbss/service/BSANotification$Light;->argb:I

    iget-object v3, p1, Lcom/mobeam/mbss/service/BSANotification;->light:Lcom/mobeam/mbss/service/BSANotification$Light;

    iget v3, v3, Lcom/mobeam/mbss/service/BSANotification$Light;->onMs:I

    iget-object v4, p1, Lcom/mobeam/mbss/service/BSANotification;->light:Lcom/mobeam/mbss/service/BSANotification$Light;

    iget v4, v4, Lcom/mobeam/mbss/service/BSANotification$Light;->offMs:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->intent:Lcom/mobeam/mbss/service/BSANotification$IntentData;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->intent:Lcom/mobeam/mbss/service/BSANotification$IntentData;

    invoke-direct {p0, v1}, Lcom/mobeam/barcodeService/b/a;->a(Lcom/mobeam/mbss/service/BSANotification$IntentData;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1
    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->actions:[Lcom/mobeam/mbss/service/BSANotification$Action;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/mobeam/mbss/service/BSANotification;->actions:[Lcom/mobeam/mbss/service/BSANotification$Action;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_4

    :cond_2
    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/mobeam/barcodeService/b/a;->a()[I

    move-result-object v1

    iget-object v3, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v3, v3, Lcom/mobeam/mbss/service/BSANotification$BigView;->type:Lcom/mobeam/mbss/service/BSANotification$BigType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mobeam/barcodeService/b/a;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p1, Lcom/mobeam/mbss/service/BSANotification;->id:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_4
    aget-object v5, v3, v1

    iget v6, v5, Lcom/mobeam/mbss/service/BSANotification$Action;->icon:I

    invoke-static {v6}, Lcom/mobeam/barcodeService/b/a;->a(I)I

    move-result v6

    iget-object v7, v5, Lcom/mobeam/mbss/service/BSANotification$Action;->title:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/mobeam/barcodeService/b/a;->a(Lcom/mobeam/mbss/service/BSANotification$IntentData;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v6, v7, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v1, v1, Lcom/mobeam/mbss/service/BSANotification$BigView;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v1, v1, Lcom/mobeam/mbss/service/BSANotification$BigView;->bigTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v1, v1, Lcom/mobeam/mbss/service/BSANotification$BigView;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto :goto_1

    :pswitch_1
    new-instance v1, Landroid/app/Notification$InboxStyle;

    invoke-direct {v1, v2}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v3, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v3, v3, Lcom/mobeam/mbss/service/BSANotification$BigView;->lines:[Ljava/lang/String;

    array-length v4, v3

    :goto_2
    if-lt v0, v4, :cond_5

    iget-object v0, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v0, v0, Lcom/mobeam/mbss/service/BSANotification$BigView;->bigTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v0

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v1, v1, Lcom/mobeam/mbss/service/BSANotification$BigView;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_1

    :cond_5
    aget-object v5, v3, v0

    invoke-virtual {v1, v5}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_2
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0, v2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v1, v1, Lcom/mobeam/mbss/service/BSANotification$BigView;->picture:Ljava/lang/String;

    invoke-static {v1}, Lcom/mobeam/barcodeService/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v1, v1, Lcom/mobeam/mbss/service/BSANotification$BigView;->largeIcon:Ljava/lang/String;

    invoke-static {v1}, Lcom/mobeam/barcodeService/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v1, v1, Lcom/mobeam/mbss/service/BSANotification$BigView;->bigTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    iget-object v1, p1, Lcom/mobeam/mbss/service/BSANotification;->bigView:Lcom/mobeam/mbss/service/BSANotification$BigView;

    iget-object v1, v1, Lcom/mobeam/mbss/service/BSANotification$BigView;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
