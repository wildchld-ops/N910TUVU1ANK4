.class Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactAgentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;-><init>(Lcom/android/incallui/InCallPresenter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.sec.orca.contactagent.ACTION_CONTACT_ORIGINAL_IMAGE_RESULT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "ContactAgentReceiver"

    invoke-static {p0, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sput-boolean v8, Lcom/android/incallui/InCallUtils;->isFromContactAgent:Z

    const-string v6, "extra_contact_image"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "extra_contact_name"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "extra_contact_presence"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput-object v3, Lcom/android/incallui/InCallUtils;->contactAgentName:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContactAgentReceiver name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v6, v3, v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryName(Ljava/lang/String;Z)V

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mIncomingPopupService:Lcom/android/incallui/service/IncomingPopupService;
    invoke-static {v6}, Lcom/android/incallui/InCallPresenter;->access$900(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/service/IncomingPopupService;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mIncomingPopupService:Lcom/android/incallui/service/IncomingPopupService;
    invoke-static {v6}, Lcom/android/incallui/InCallPresenter;->access$900(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/service/IncomingPopupService;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/incallui/service/IncomingPopupService;->setPrimaryName(Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContactAgentReceiver result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    array-length v6, v5

    invoke-static {v5, v9, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v2, Lcom/android/incallui/InCallUtils;->contactAgentImage:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v6, v2, v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mOverlayPopupService:Lcom/android/incallui/service/OverlayPopupService;
    invoke-static {v6}, Lcom/android/incallui/InCallPresenter;->access$1000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/service/OverlayPopupService;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mOverlayPopupService:Lcom/android/incallui/service/OverlayPopupService;
    invoke-static {v6}, Lcom/android/incallui/InCallPresenter;->access$1000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/service/OverlayPopupService;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/incallui/service/OverlayPopupService;->setCallPhoto(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mIncomingPopupService:Lcom/android/incallui/service/IncomingPopupService;
    invoke-static {v6}, Lcom/android/incallui/InCallPresenter;->access$900(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/service/IncomingPopupService;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mIncomingPopupService:Lcom/android/incallui/service/IncomingPopupService;
    invoke-static {v6}, Lcom/android/incallui/InCallPresenter;->access$900(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/service/IncomingPopupService;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/incallui/service/IncomingPopupService;->setCallerImage(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    sput v4, Lcom/android/incallui/InCallUtils;->contactAgentPresence:I

    if-eq v4, v10, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContactAgentReceiver presenceMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v6, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPresenceIcon(I)V

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mIncomingPopupService:Lcom/android/incallui/service/IncomingPopupService;
    invoke-static {v6}, Lcom/android/incallui/InCallPresenter;->access$900(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/service/IncomingPopupService;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter$ContactAgentReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mIncomingPopupService:Lcom/android/incallui/service/IncomingPopupService;
    invoke-static {v6}, Lcom/android/incallui/InCallPresenter;->access$900(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/service/IncomingPopupService;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/incallui/service/IncomingPopupService;->setPresenceIcon(I)V

    :cond_6
    return-void

    :cond_7
    const/4 v6, 0x0

    sput-object v6, Lcom/android/incallui/InCallUtils;->contactAgentImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
