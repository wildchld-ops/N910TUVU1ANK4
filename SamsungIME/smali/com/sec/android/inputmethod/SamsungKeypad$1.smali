.class Lcom/sec/android/inputmethod/SamsungKeypad$1;
.super Ljava/lang/Object;
.source "SamsungKeypad.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SamsungKeypad;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypad;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypad;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypad$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "SamsungIME"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1    # I

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMeomory Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypad;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypad;->access$000(Lcom/sec/android/inputmethod/SamsungKeypad;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungIME"

    const-string v1, "trimSwiftkeyMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypad;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypad;->access$000(Lcom/sec/android/inputmethod/SamsungKeypad;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->trimSwiftkeyMemory()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_1
        0x14 -> :sswitch_0
        0x28 -> :sswitch_0
        0x3c -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
