.class Lcom/android/settings/LockAddInfoSettings$8;
.super Ljava/lang/Object;
.source "LockAddInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockAddInfoSettings;->showPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockAddInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockAddInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LockAddInfoSettings$8;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "LockAddInfoSettings"

    const-string v1, "showPermissionDialog enable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$8;->this$0:Lcom/android/settings/LockAddInfoSettings;

    # invokes: Lcom/android/settings/LockAddInfoSettings;->sendWeatherData()V
    invoke-static {v0}, Lcom/android/settings/LockAddInfoSettings;->access$100(Lcom/android/settings/LockAddInfoSettings;)V

    return-void
.end method
