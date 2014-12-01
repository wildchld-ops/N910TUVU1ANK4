.class public Lcom/android/settings/FactoryResetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FactoryResetBroadcastReceiver.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FactoryResetBroadcastReceiver"

    sput-object v0, Lcom/android/settings/FactoryResetBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object v1, Lcom/android/settings/FactoryResetBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "FactoryResetBroadcastReceiver\'s onReceive."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "STATUS"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return-void
.end method
