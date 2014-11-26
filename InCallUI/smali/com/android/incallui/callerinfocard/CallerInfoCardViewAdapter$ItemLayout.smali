.class Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;
.super Ljava/lang/Object;
.source "CallerInfoCardViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemLayout"
.end annotation


# instance fields
.field private appIcon:Landroid/widget/ImageView;

.field private imageType1:Landroid/widget/ImageView;

.field private imageType2:Landroid/widget/ImageView;

.field private imageType3:Landroid/widget/ImageView;

.field private mainText:Landroid/widget/TextView;

.field private mandatoryView:Landroid/view/View;

.field private optionalBottomText1:Landroid/widget/TextView;

.field private optionalBottomText2:Landroid/widget/TextView;

.field private optionalBottomUpdateTime:Landroid/widget/TextView;

.field private optionalIcon:Landroid/widget/ImageView;

.field private optionalText:Landroid/widget/TextView;

.field private optionalView:Landroid/view/View;

.field private photoLayout:Landroid/widget/LinearLayout;

.field private photoPager:Landroid/support/v4/view/ViewPager;

.field private subjectText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

.field private title:Landroid/widget/TextView;

.field private updateTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryLayout(Landroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalLayout(Landroid/view/View;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;Landroid/view/View;Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$1;)V
    .locals 0
    .param p1    # Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;
    .param p2    # Landroid/view/View;
    .param p3    # Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$1;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;I)V
    .locals 0
    .param p0    # Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->update(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;)V
    .locals 0
    .param p0    # Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->clearDrawable()V

    return-void
.end method

.method private clearDrawable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->appIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType1:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType2:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType3:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method private mandatoryLayout(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v4, 0x0

    const v2, 0x7f0e004e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryView:Landroid/view/View;

    const v3, 0x7f0e004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->appIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryView:Landroid/view/View;

    const v3, 0x7f0e0050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryView:Landroid/view/View;

    const v3, 0x7f0e0051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryView:Landroid/view/View;

    const v3, 0x7f0e0053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->updateTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryView:Landroid/view/View;

    const v3, 0x7f0e0054

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->subjectText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryView:Landroid/view/View;

    const v3, 0x7f0e0055

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryView:Landroid/view/View;

    const v3, 0x7f0e0052

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryView:Landroid/view/View;

    const v3, 0x7f0e0056

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    const-string v2, "caller_info_large_text_size"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->updateTime:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->subjectText:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private mandatoryUpdate(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 3
    .param p1    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType1:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getImageType1()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->updateTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTimeString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/TextView;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->subjectText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getSubjectText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType2:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getImageType2()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->imageType3:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getActionMemoThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElementMainText(Landroid/widget/TextView;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    return-void
.end method

.method private optionalLayout(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v3, 0x0

    const v1, 0x7f0e0057

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalView:Landroid/view/View;

    const v2, 0x7f0e0059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalView:Landroid/view/View;

    const v2, 0x7f0e005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalView:Landroid/view/View;

    const v2, 0x7f0e005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->photoLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalView:Landroid/view/View;

    const v2, 0x7f0e005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->photoPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalView:Landroid/view/View;

    const v2, 0x7f0e005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalBottomText1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalView:Landroid/view/View;

    const v2, 0x7f0e0061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalBottomText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalView:Landroid/view/View;

    const v2, 0x7f0e0062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalBottomUpdateTime:Landroid/widget/TextView;

    const-string v1, "caller_info_large_text_size"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalBottomText1:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalBottomText2:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalBottomUpdateTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private optionalUpdate(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;Z)V
    .locals 3
    .param p1    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    .param p2    # Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getOptionalIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getOptionalText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->photoLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->photoPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getPhotoUrls()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElementPhotoUrls(Landroid/view/View;Landroid/support/v4/view/ViewPager;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalBottomText1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getOptionalBottomText1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalBottomText2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getOptionalBottomText2()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalBottomUpdateTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getOptionalBottomUpdateTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setElement(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
    .param p2    # Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setElement(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->setElement(Landroid/widget/TextView;Ljava/lang/String;Z)V

    return-void
.end method

.method private setElement(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    if-nez p2, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setElementMainText(Landroid/widget/TextView;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 2
    .param p1    # Landroid/widget/TextView;
    .param p2    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {p2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getMainText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getSubjectText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    invoke-virtual {p2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->isOptionalUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getMainText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getMainTextTTS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setElementPhotoUrls(Landroid/view/View;Landroid/support/v4/view/ViewPager;Ljava/util/ArrayList;)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/support/v4/view/ViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->setPhotoUrls(Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p2, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v1, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout$1;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;)V

    invoke-virtual {p2, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0
.end method

.method private update(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->mandatoryUpdate(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->isOptionalUpdate()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->optionalUpdate(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;Z)V

    return-void
.end method
