.class public Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;
.super Ljava/lang/Object;
.source "WifiShareProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiShareProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiShareProfileApInfo"
.end annotation


# instance fields
.field index:Ljava/lang/String;

.field network:Ljava/lang/String;

.field priority:I

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->index:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->network:Ljava/lang/String;

    iput p5, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->priority:I

    return-void
.end method
