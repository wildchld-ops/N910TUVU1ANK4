.class Lcom/android/settings/SViewColor2014$6;
.super Ljava/lang/Object;
.source "SViewColor2014.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor2014;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor2014;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1    # Landroid/view/View;

    move-object/from16 v6, p1

    check-cast v6, Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    const v14, 0x7f02069d

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;
    invoke-static {v13}, Lcom/android/settings/SViewColor2014;->access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$800(Lcom/android/settings/SViewColor2014;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    const/4 v14, 0x0

    # invokes: Lcom/android/settings/SViewColor2014;->setfocusButton(Z)V
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    :goto_1
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x1

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x1

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x2

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x2

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x3

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x3

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x4

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x4

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x5

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x5

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x6

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x6

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/16 v15, 0x8

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/16 v15, 0x8

    aget v14, v14, v15

    # setter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    const/4 v14, 0x0

    # invokes: Lcom/android/settings/SViewColor2014;->setfocusButton(Z)V
    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;
    invoke-static {v13}, Lcom/android/settings/SViewColor2014;->access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    # invokes: Lcom/android/settings/SViewColor2014;->getCustomWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$1000(Lcom/android/settings/SViewColor2014;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_9
    const-string v4, "cover_wallpaper.jpg"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "sview_bg_wallpaper_path"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, "/storage/emulated/0/Android/data/com.sec.android.sviewcover/files/Pictures/"

    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.GET_CONTENT"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "image/*"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.sec.android.gallery3d"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "crop"

    const-string v14, "true"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "set_sview"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v13, "output"

    invoke-virtual {v7, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v12, 0x1

    const/4 v5, 0x1

    :try_start_1
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v12

    invoke-virtual {v10}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v5

    const-string v13, "SViewColor2014"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "scoverState width : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/ height : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const-string v13, "aspectX"

    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "aspectY"

    invoke-virtual {v7, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "SViewColor2014"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gallery3d intent - aspectX : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/ aspectY : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_3
    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "scale"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    const/16 v14, 0x3e9

    invoke-virtual {v13, v7, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v13, "SViewColor2014"

    const-string v14, "createNewfile---->error"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    const-string v13, "SViewColor2014"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v13, "aspectX"

    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "aspectY"

    invoke-virtual {v7, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "SViewColor2014"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gallery3d intent - aspectX : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/ aspectY : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :catchall_0
    move-exception v13

    const-string v14, "aspectX"

    invoke-virtual {v7, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "aspectY"

    invoke-virtual {v7, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "SViewColor2014"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gallery3d intent - aspectX : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/ aspectY : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    throw v13

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00f8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
