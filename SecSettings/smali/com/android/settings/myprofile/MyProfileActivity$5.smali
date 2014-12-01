.class Lcom/android/settings/myprofile/MyProfileActivity$5;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myprofile/MyProfileActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myprofile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myprofile/MyProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myprofile/MyProfileActivity$5;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$5;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    # getter for: Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;
    invoke-static {v1}, Lcom/android/settings/myprofile/MyProfileActivity;->access$400(Lcom/android/settings/myprofile/MyProfileActivity;)[Landroid/graphics/Typeface;

    move-result-object v1

    aget-object v1, v1, p3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$5;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    const v2, 0x7f0b02f2

    invoke-virtual {v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity$5;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    # getter for: Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;
    invoke-static {v2}, Lcom/android/settings/myprofile/MyProfileActivity;->access$400(Lcom/android/settings/myprofile/MyProfileActivity;)[Landroid/graphics/Typeface;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$5;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    const v2, 0x7f0b02f2

    invoke-virtual {v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$5;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    const v2, 0x7f0b02f2

    invoke-virtual {v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/text/TextWatcher;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$5;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    # getter for: Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z
    invoke-static {v1}, Lcom/android/settings/myprofile/MyProfileActivity;->access$500(Lcom/android/settings/myprofile/MyProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$5;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    # getter for: Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;
    invoke-static {v1}, Lcom/android/settings/myprofile/MyProfileActivity;->access$600(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/EllipsisEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->fontChange()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$5;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z
    invoke-static {v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->access$502(Lcom/android/settings/myprofile/MyProfileActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
