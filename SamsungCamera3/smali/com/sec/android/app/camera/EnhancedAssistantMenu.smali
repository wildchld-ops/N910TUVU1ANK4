.class public Lcom/sec/android/app/camera/EnhancedAssistantMenu;
.super Ljava/lang/Object;
.source "EnhancedAssistantMenu.java"


# static fields
.field public static final ACTION_GALLERY:Ljava/lang/String; = "android.intent.action.switchgallery"

.field public static final ACTION_SWITCH_CAMERA:Ljava/lang/String; = "android.intent.action.switchcamera"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "ActivityName"

.field private static final ICON_NAME:Ljava/lang/String; = "IconName"

.field private static final MENU_GALLERY:Ljava/lang/String; = "Gallery"

.field private static final MENU_SWITCH_CAMERA:Ljava/lang/String; = "Switch camera"

.field private static final REGISTER:Ljava/lang/String; = "register"

.field private static final TAG:Ljava/lang/String; = "EnhancedAssistantMenu"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field public mAssistantMenuAdded:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mAssistantMenuAdded:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.switchcamera"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.switchgallery"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private getMenuList()Ljava/lang/String;
    .locals 1

    const-string v0, "Switch camera;Gallery;"

    return-object v0
.end method


# virtual methods
.method public addAssistantMenu()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "EnhancedAssistantMenu"

    const-string v2, "addAssistantMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mAssistantMenuAdded:Z

    if-eqz v1, :cond_0

    const-string v1, "EnhancedAssistantMenu"

    const-string v2, "Assistant Menu is already added"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ActivityName"

    iget-object v2, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IconName"

    invoke-direct {p0}, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->getMenuList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mAssistantMenuAdded:Z

    goto :goto_0
.end method

.method public registerEAM(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1    # Landroid/content/BroadcastReceiver;

    const-string v0, "EnhancedAssistantMenu"

    const-string v1, "registerEAM"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->addAssistantMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeAssistantMenu()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "EnhancedAssistantMenu"

    const-string v2, "removeAssistantMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ActivityName"

    iget-object v2, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IconName"

    invoke-direct {p0}, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->getMenuList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mAssistantMenuAdded:Z

    return-void
.end method

.method public unregisterEAM(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1    # Landroid/content/BroadcastReceiver;

    const-string v1, "EnhancedAssistantMenu"

    const-string v2, "unregisterEAM"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->removeAssistantMenu()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EnhancedAssistantMenu"

    const-string v2, "IllegalArgumentException : unregiseter EAM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
