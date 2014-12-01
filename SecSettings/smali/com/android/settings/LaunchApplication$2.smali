.class Lcom/android/settings/LaunchApplication$2;
.super Ljava/lang/Object;
.source "LaunchApplication.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LaunchApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LaunchApplication;


# direct methods
.method constructor <init>(Lcom/android/settings/LaunchApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    # getter for: Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/settings/LaunchApplication;->access$000(Lcom/android/settings/LaunchApplication;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    # invokes: Lcom/android/settings/LaunchApplication;->updateHomeApplicationSetting()V
    invoke-static {v1}, Lcom/android/settings/LaunchApplication;->access$100(Lcom/android/settings/LaunchApplication;)V

    iget-object v1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    # invokes: Lcom/android/settings/LaunchApplication;->initSmsApplicationSetting()V
    invoke-static {v1}, Lcom/android/settings/LaunchApplication;->access$200(Lcom/android/settings/LaunchApplication;)V

    iget-object v1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-virtual {v1}, Lcom/android/settings/LaunchApplication;->buildDefaultApplicationList()V

    return-void
.end method
