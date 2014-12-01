.class Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AllowDataAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AllowDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AllowDataAccess;


# direct methods
.method constructor <init>(Lcom/android/phone/AllowDataAccess;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;->this$0:Lcom/android/phone/AllowDataAccess;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;->this$0:Lcom/android/phone/AllowDataAccess;

    invoke-virtual {v1}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AllowDataAccess"

    const-string v2, "onChange(): RoamSettingsObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;->this$0:Lcom/android/phone/AllowDataAccess;

    invoke-virtual {v1}, Lcom/android/phone/AllowDataAccess;->finish()V

    return-void
.end method
