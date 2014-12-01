.class Lcom/diotek/ime/framework/common/InputManagerImpl$10;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->containsOCRPackageName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->scanPackageInfo(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->isInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->getOCRPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRPackageInfo:Landroid/content/pm/PackageInfo;
    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3902(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRPackageInfo:Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3900(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOcrSIPTextReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsRegisteredOcrSIPTextReceiver:Z
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "SamsungIME"

    const-string v4, "OCR Package Added or Replaced. Register OcrSIP TextReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->registerOcrSIPTextReceiver()V

    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v4, 0x0

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsRegisteredOcrSIPTextReceiver:Z
    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4102(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v4, 0x0

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRPackageInfo:Landroid/content/pm/PackageInfo;
    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3902(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->unregisterOcrSIPTextReceiver()V

    const-string v3, "SamsungIME"

    const-string v4, "OCR Package Removed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOCRHelper:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->scanPackageInfo(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "SamsungIME"

    const-string v4, "mOCRHelper is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
