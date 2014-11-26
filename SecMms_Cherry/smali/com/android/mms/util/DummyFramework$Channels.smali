.class public interface abstract Lcom/android/mms/util/DummyFramework$Channels;
.super Ljava/lang/Object;
.source "DummyFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DummyFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Channels"
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final CHANNEL_NAME:Ljava/lang/String; = "channel_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IS_CHECKED:Ljava/lang/String; = "is_checked"

.field public static final SIM_SLOT:Ljava/lang/String; = "sim_slot"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
