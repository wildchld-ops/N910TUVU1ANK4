.class public interface abstract Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$ParticipantsColumns;
.super Ljava/lang/Object;
.source "StatusNotificationReceiver.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParticipantsColumns"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$ParticipantsColumns$Status;,
        Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$ParticipantsColumns$Type;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.samsung.rcs.participant"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.samsung.rcs.participant"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URI:Ljava/lang/String; = "uri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://content://com.samsung.rcs.im/participants"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$ParticipantsColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
