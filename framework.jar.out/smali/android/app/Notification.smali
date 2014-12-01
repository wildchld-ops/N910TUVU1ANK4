.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_AS_HEADS_UP:Ljava/lang/String; = "headsup"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_SCORE_MODIFIED:Ljava/lang/String; = "android.scoreModified"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_DISABLE_STATUS_BAR_OPEN_FULLSCREEN:I = 0x1000

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_IS_NEGATIVE:I = 0x2

.field public static final FLAG_IS_ZERO:I = 0x4

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final FLAG_SYNCED:I = 0x1

.field public static final FORCE_LED_BLINKING:I = 0x100

.field public static final HEADS_UP_ALLOWED:I = 0x1

.field public static final HEADS_UP_NEVER:I = 0x0

.field public static final HEADS_UP_REQUESTED:I = 0x2

.field public static final KIND_CALL:Ljava/lang/String; = "android.call"

.field public static final KIND_EMAIL:Ljava/lang/String; = "android.email"

.field public static final KIND_EVENT:Ljava/lang/String; = "android.event"

.field public static final KIND_MESSAGE:Ljava/lang/String; = "android.message"

.field public static final KIND_PROMO:Ljava/lang/String; = "android.promo"

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Notification"

.field public static final TWQUICKPANEL_NOTIFICATION_CALL:I = 0x1

.field public static final TWQUICKPANEL_NOTIFICATION_CONTEXTAWARE:I = 0x10

.field public static final TWQUICKPANEL_NOTIFICATION_INVISIBLE_ICON:I = 0x40

.field public static final TWQUICKPANEL_NOTIFICATION_KIDSMODE:I = 0x100

.field public static final TWQUICKPANEL_NOTIFICATION_KNOXMODE:I = 0x80

.field public static final TWQUICKPANEL_NOTIFICATION_MUSIC:I = 0x2

.field public static final TWQUICKPANEL_NOTIFICATION_MUSICHUB:I = 0x20

.field public static final TWQUICKPANEL_NOTIFICATION_NETWORKBOOSTER:I = 0x108

.field public static final TWQUICKPANEL_NOTIFICATION_RADIO:I = 0x8

.field public static final TWQUICKPANEL_NOTIFICATION_SMARTREMOTE:I = 0x101

.field public static final TWQUICKPANEL_NOTIFICATION_STALKIE:I = 0x102

.field public static final TWQUICKPANEL_NOTIFICATION_TOOLBOX:I = 0x104

.field public static final TWQUICKPANEL_NOTIFICATION_VOICERECORD:I = 0x4


# instance fields
.field public actions:[Landroid/app/Notification$Action;

.field public audioStreamType:I

.field public bigContentView:Landroid/widget/RemoteViews;

.field public commonValue:I

.field public contactCharSeq:Ljava/lang/CharSequence;

.field public contentIntent:Landroid/app/PendingIntent;

.field public contentText:Ljava/lang/CharSequence;

.field public contentTitle:Ljava/lang/CharSequence;

.field public contentView:Landroid/widget/RemoteViews;

.field public defaults:I

.field public deleteIntent:Landroid/app/PendingIntent;

.field public extras:Landroid/os/Bundle;

.field public flags:I

.field public fullScreenIntent:Landroid/app/PendingIntent;

.field public haptic:I

.field public icon:I

.field public iconLevel:I

.field public kind:[Ljava/lang/String;

.field public knoxFlags:I

.field public largeIcon:Landroid/graphics/Bitmap;

.field public ledARGB:I

.field public ledOffMS:I

.field public ledOnMS:I

.field public missedCount:I

.field public number:I

.field public originalPackageName:Ljava/lang/CharSequence;

.field public originalUserId:I

.field public priority:I

.field public sound:Landroid/net/Uri;

.field private stringNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public threadId:J

.field public tickerText:Ljava/lang/CharSequence;

.field public tickerView:Landroid/widget/RemoteViews;

.field public twQuickPanelEvent:I

.field public vibrate:[J

.field public when:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/app/Notification;->DEBUG:Z

    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iput v2, p0, Landroid/app/Notification;->knoxFlags:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->when:J

    iput v2, p0, Landroid/app/Notification;->priority:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->knoxFlags:I

    iput p1, p0, Landroid/app/Notification;->icon:I

    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-wide p3, p0, Landroid/app/Notification;->when:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iput v1, p0, Landroid/app/Notification;->knoxFlags:I

    iput-wide p4, p0, Landroid/app/Notification;->when:J

    iput p2, p0, Landroid/app/Notification;->icon:I

    iput-object p3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {p1, v1, p8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, p1, p6, p7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v5, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    const/4 v5, -0x1

    iput v5, p0, Landroid/app/Notification;->audioStreamType:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v5, 0x0

    iput v5, p0, Landroid/app/Notification;->knoxFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/Notification;->contentTitle:Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/Notification;->contentText:Ljava/lang/CharSequence;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->originalUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->knoxFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    sget-object v5, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/Notification$Action;

    iput-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->commonValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->missedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->haptic:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/Notification;->threadId:J

    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_e

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_e

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method static synthetic access$202(Landroid/app/Notification;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    return-object p1
.end method

.method public static safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    const-string v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public clone()Landroid/app/Notification;
    .locals 2

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public cloneInto(Landroid/app/Notification;Z)V
    .locals 10

    const/4 v9, 0x0

    iget-wide v7, p0, Landroid/app/Notification;->when:J

    iput-wide v7, p1, Landroid/app/Notification;->when:J

    iget v7, p0, Landroid/app/Notification;->icon:I

    iput v7, p1, Landroid/app/Notification;->icon:I

    iget v7, p0, Landroid/app/Notification;->number:I

    iput v7, p1, Landroid/app/Notification;->number:I

    iget-object v7, p0, Landroid/app/Notification;->contentTitle:Ljava/lang/CharSequence;

    iput-object v7, p1, Landroid/app/Notification;->contentTitle:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/app/Notification;->contentText:Ljava/lang/CharSequence;

    iput-object v7, p1, Landroid/app/Notification;->contentText:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    iput-object v7, p1, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    iget v7, p0, Landroid/app/Notification;->originalUserId:I

    iput v7, p1, Landroid/app/Notification;->originalUserId:I

    iget-object v7, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v7, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v7, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v7, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v7, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    :cond_1
    if-eqz p2, :cond_2

    iget-object v7, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_2
    if-eqz p2, :cond_3

    iget-object v7, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    :cond_3
    iget v7, p0, Landroid/app/Notification;->iconLevel:I

    iput v7, p1, Landroid/app/Notification;->iconLevel:I

    iget-object v7, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v7, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v7, p0, Landroid/app/Notification;->audioStreamType:I

    iput v7, p1, Landroid/app/Notification;->audioStreamType:I

    iget-object v6, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v6, :cond_4

    array-length v0, v6

    new-array v5, v0, [J

    iput-object v5, p1, Landroid/app/Notification;->vibrate:[J

    invoke-static {v6, v9, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget v7, p0, Landroid/app/Notification;->ledARGB:I

    iput v7, p1, Landroid/app/Notification;->ledARGB:I

    iget v7, p0, Landroid/app/Notification;->ledOnMS:I

    iput v7, p1, Landroid/app/Notification;->ledOnMS:I

    iget v7, p0, Landroid/app/Notification;->ledOffMS:I

    iput v7, p1, Landroid/app/Notification;->ledOffMS:I

    iget v7, p0, Landroid/app/Notification;->defaults:I

    iput v7, p1, Landroid/app/Notification;->defaults:I

    iget v7, p0, Landroid/app/Notification;->flags:I

    iput v7, p1, Landroid/app/Notification;->flags:I

    iget v7, p0, Landroid/app/Notification;->priority:I

    iput v7, p1, Landroid/app/Notification;->priority:I

    iget-object v4, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    if-eqz v4, :cond_5

    array-length v0, v4

    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p1, Landroid/app/Notification;->kind:[Ljava/lang/String;

    invoke-static {v4, v9, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_6

    :try_start_0
    new-instance v7, Landroid/os/Bundle;

    iget-object v8, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    iget-object v7, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v7, v7

    new-array v7, v7, [Landroid/app/Notification$Action;

    iput-object v7, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v7, v7

    if-ge v2, v7, :cond_7

    iget-object v7, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v8, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v8

    aput-object v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v7, "Notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not unparcel extras from notification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    iput-object v7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    iget-object v7, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_8
    if-nez p2, :cond_9

    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    :cond_9
    iget v7, p0, Landroid/app/Notification;->twQuickPanelEvent:I

    iput v7, p1, Landroid/app/Notification;->twQuickPanelEvent:I

    iget v7, p0, Landroid/app/Notification;->commonValue:I

    iput v7, p1, Landroid/app/Notification;->commonValue:I

    iget v7, p0, Landroid/app/Notification;->missedCount:I

    iput v7, p1, Landroid/app/Notification;->missedCount:I

    iget-object v7, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    iput-object v7, p1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    iget v7, p0, Landroid/app/Notification;->haptic:I

    iput v7, p1, Landroid/app/Notification;->haptic:I

    iget-wide v7, p0, Landroid/app/Notification;->threadId:J

    iput-wide v7, p1, Landroid/app/Notification;->threadId:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final lightenPayload()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon.big"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.picture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setKnoxFlag(I)V
    .locals 1

    iget v0, p0, Landroid/app/Notification;->knoxFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification;->knoxFlags:I

    return-void
.end method

.method public setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v1, p0, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget v1, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget v1, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget v1, p0, Landroid/app/Notification;->number:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    iget v1, p0, Landroid/app/Notification;->flags:I

    # setter for: Landroid/app/Notification$Builder;->mFlags:I
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$102(Landroid/app/Notification$Builder;I)I

    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v2, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    return-void
.end method

.method public setOriginalPackageName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setOriginalUserId(I)V
    .locals 0

    iput p1, p0, Landroid/app/Notification;->originalUserId:I

    return-void
.end method

.method public setUser(Landroid/os/UserHandle;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    :cond_2
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification(pri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->icon:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contentView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v3, " vibrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, " sound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v3, " defaults=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ledARGB=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->ledARGB:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contentIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_9

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v3, " deleteIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_a

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v3, " contentTitle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->contentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    sget-boolean v3, Landroid/app/Notification;->DEBUG:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/app/Notification;->contentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string v3, " contentText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->contentText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_e

    sget-boolean v3, Landroid/app/Notification;->DEBUG:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/app/Notification;->contentText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const-string v3, " originalPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_10

    sget-boolean v3, Landroid/app/Notification;->DEBUG:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string v3, " originalUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->originalUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tickerText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_12

    sget-boolean v3, Landroid/app/Notification;->DEBUG:Z

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const-string v3, " kind=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    if-nez v3, :cond_13

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_6
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_8
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_a
    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_b
    iget-object v3, p0, Landroid/app/Notification;->contentTitle:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_c
    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_d
    iget-object v3, p0, Landroid/app/Notification;->contentText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_e
    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_f
    iget-object v3, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_10
    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_11
    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_12
    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_13
    const/4 v1, 0x0

    :goto_a
    iget-object v3, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    if-lez v1, :cond_14

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v3, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v3, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->contentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->contentTitle:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_0
    iget-object v3, p0, Landroid/app/Notification;->contentText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->contentText:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_1
    iget-object v3, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_2
    iget v3, p0, Landroid/app/Notification;->originalUserId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v5}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget-object v3, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_4

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v5}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_5
    iget-object v3, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v5}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_7

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v5}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    iget-object v3, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    iget v3, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v3, :cond_9

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v3, p1, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    iget v3, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    iget v3, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/Notification;->knoxFlags:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_a

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v5}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    iget v3, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_b

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v5}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    iget v3, p0, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/Notification;->commonValue:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/Notification;->missedCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_c
    iget v3, p0, Landroid/app/Notification;->haptic:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Landroid/app/Notification;->threadId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    sget-boolean v3, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_0
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :cond_b
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    :cond_c
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    :cond_d
    return-void
.end method
