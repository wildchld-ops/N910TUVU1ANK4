.class Lcom/android/phone/PhoneGlobals$6;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Lcom/android/phone/ICallMessageNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$6;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/android/phone/CallMessageConstants$RequestType;Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Lcom/android/phone/CallMessageConstants$RequestType;
    .param p2    # Landroid/os/Bundle;

    const/4 v10, 0x0

    sget-object v8, Lcom/android/phone/PhoneGlobals$26;->$SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$6;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->prdownstarted:Z
    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->access$3000(Lcom/android/phone/PhoneGlobals;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "dl_result"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    const-string v8, "dl_path"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "_data"

    invoke-virtual {v1, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, ".mp4"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const-string v8, "width"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_1
    # getter for: Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$3100()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    if-eqz v0, :cond_3

    # getter for: Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$3100()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    const v9, 0x7f090818

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :goto_2
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$6;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->prdownstarted:Z
    invoke-static {v8, v10}, Lcom/android/phone/PhoneGlobals;->access$3002(Lcom/android/phone/PhoneGlobals;Z)Z

    invoke-static {}, Lcom/android/phone/PhotoRingMgr;->getInstance()Lcom/android/phone/PhotoRingMgr;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$6;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mCallMessageNetworkListener:Lcom/android/phone/ICallMessageNetworkListener;
    invoke-static {v9}, Lcom/android/phone/PhoneGlobals;->access$3200(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/ICallMessageNetworkListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/phone/PhotoRingMgr;->deregisterCallMessageNetworkListener(Lcom/android/phone/ICallMessageNetworkListener;)V

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    # getter for: Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$3100()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    const v9, 0x7f090817

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
