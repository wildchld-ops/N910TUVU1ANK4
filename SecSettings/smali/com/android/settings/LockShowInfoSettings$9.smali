.class Lcom/android/settings/LockShowInfoSettings$9;
.super Ljava/lang/Object;
.source "LockShowInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockShowInfoSettings;->showPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockShowInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockShowInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LockShowInfoSettings$9;->this$0:Lcom/android/settings/LockShowInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "LockShowInfoSettings"

    const-string v1, "showPermissionDialog enable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings$9;->this$0:Lcom/android/settings/LockShowInfoSettings;

    # invokes: Lcom/android/settings/LockShowInfoSettings;->sendWeatherData()V
    invoke-static {v0}, Lcom/android/settings/LockShowInfoSettings;->access$100(Lcom/android/settings/LockShowInfoSettings;)V

    return-void
.end method
