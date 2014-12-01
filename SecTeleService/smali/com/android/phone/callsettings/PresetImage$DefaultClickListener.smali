.class Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PresetImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImage;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/PresetImage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/callsettings/PresetImage;
    .param p2    # Lcom/android/phone/callsettings/PresetImage$1;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const v6, 0x7f090929

    const/4 v5, 0x1

    const-string v4, "rearrange_preset_image_setting"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-le p2, v5, :cond_0

    const/4 p2, 0x1

    :cond_0
    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    # invokes: Lcom/android/phone/callsettings/PresetImage;->pickImageFromGallery()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$500(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x32

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    const-string v4, "PresetImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-ne p2, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    # invokes: Lcom/android/phone/callsettings/PresetImage;->capturePicture()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$600(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x34

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    # invokes: Lcom/android/phone/callsettings/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$700(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v1

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x33

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    const-string v4, "PresetImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    # invokes: Lcom/android/phone/callsettings/PresetImage;->checkRemainingSize()J
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$800(Lcom/android/phone/callsettings/PresetImage;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    # invokes: Lcom/android/phone/callsettings/PresetImage;->recordVideo(J)Landroid/content/Intent;
    invoke-static {v4, v2, v3}, Lcom/android/phone/callsettings/PresetImage;->access$900(Lcom/android/phone/callsettings/PresetImage;J)Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x35

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const v6, 0x7f0902a2

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
