.class Lcom/android/mms/help/AirButtonMainActivity$4;
.super Ljava/lang/Object;
.source "AirButtonMainActivity.java"

# interfaces
.implements Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/help/AirButtonMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AirButtonMainActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirButtonMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 11
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    const v10, 0x7f0201c0

    const v9, 0x7f0201bf

    const v5, 0x7f0201be

    const/4 v4, -0x2

    const/4 v3, 0x0

    if-gez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b00fe

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0122

    if-ne v1, v2, :cond_3

    :cond_1
    const/4 v8, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I
    invoke-static {v2}, Lcom/android/mms/help/AirButtonMainActivity;->access$200(Lcom/android/mms/help/AirButtonMainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->helpguide2:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$100(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->infoCompleteTutorial:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$600(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    sput-boolean v3, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    sput-boolean v3, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    new-instance v0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x12c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;-><init>(Lcom/android/mms/help/AirButtonMainActivity$4;JJ)V

    invoke-virtual {v0, p1}, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c042f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0430

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0430

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0431

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    packed-switch p2, :pswitch_data_1

    :goto_3
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->mMediaView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$300(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->mMediaView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$300(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$400(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$500(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/help/AirButtonMainActivity;->access$500(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/help/AirButtonMainActivity;->access$500(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    :pswitch_5
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    :pswitch_6
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    :pswitch_7
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    :pswitch_8
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_9
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_a
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_b
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
