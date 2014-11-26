.class public interface abstract Lcom/sec/ims/client/csh/ICshConstants$ShareDatabase;
.super Ljava/lang/Object;
.source "ICshConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/csh/ICshConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShareDatabase"
.end annotation


# static fields
.field public static final ACTIVE_SESSIONS:I = 0x5

.field public static final ACTIVE_SESSIONS_URI:Landroid/net/Uri;

.field public static final KEY_FILE_NAME:Ljava/lang/String; = "path"

.field public static final KEY_FILE_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final KEY_RESOLUTION_HEIGHT:Ljava/lang/String; = "res_height"

.field public static final KEY_RESOLUTION_WIDTH:Ljava/lang/String; = "res_width"

.field public static final KEY_SHARE_DIRECTION:Ljava/lang/String; = "dir"

.field public static final KEY_SHARE_ID:Ljava/lang/String; = "id"

.field public static final KEY_SHARE_STATE:Ljava/lang/String; = "state"

.field public static final KEY_SHARE_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_TARGET_CONTACT:Ljava/lang/String; = "contact"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.cs"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.rcs.cs/active_sessions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/client/csh/ICshConstants$ShareDatabase;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    return-void
.end method
