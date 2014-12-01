.class public Lcom/diotek/ime/implement/setting/HwrTutorial;
.super Landroid/app/Activity;
.source "HwrTutorial.java"


# static fields
.field private static final HWR_LANG_CURSIVE:I = 0x0

.field private static final HWR_LANG_NON_CURSIVE:I = 0x1

.field private static final HWR_LANG_NOT_SUPPORTED:I = 0x2


# instance fields
.field mInputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/HwrTutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method private getHwrLanguageType(I)I
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x62670000 -> :sswitch_0
        0x63730000 -> :sswitch_0
        0x64610000 -> :sswitch_1
        0x64650000 -> :sswitch_1
        0x656c0000 -> :sswitch_0
        0x656e4742 -> :sswitch_1
        0x656e5553 -> :sswitch_1
        0x65730000 -> :sswitch_1
        0x65734553 -> :sswitch_1
        0x65735553 -> :sswitch_1
        0x66610000 -> :sswitch_0
        0x66690000 -> :sswitch_0
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x68720000 -> :sswitch_0
        0x68750000 -> :sswitch_0
        0x69740000 -> :sswitch_1
        0x69770000 -> :sswitch_0
        0x6b6f0000 -> :sswitch_0
        0x6c740000 -> :sswitch_0
        0x6c760000 -> :sswitch_0
        0x6e620000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_1
        0x706c0000 -> :sswitch_0
        0x70740000 -> :sswitch_1
        0x70744252 -> :sswitch_1
        0x70745054 -> :sswitch_1
        0x726f0000 -> :sswitch_0
        0x72750000 -> :sswitch_0
        0x736b0000 -> :sswitch_1
        0x736c0000 -> :sswitch_0
        0x73760000 -> :sswitch_0
        0x74680000 -> :sswitch_0
        0x74720000 -> :sswitch_0
        0x756b0000 -> :sswitch_0
        0x75720000 -> :sswitch_0
        0x76690000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v13

    iput-object v13, p0, Lcom/diotek/ime/implement/setting/HwrTutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e0068

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v13, 0x7f030066

    invoke-virtual {p0, v13}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const/4 v4, 0x0

    const v13, 0x7f08008f

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_7

    const-string v13, "hy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "\u055d "

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v13, p0, Lcom/diotek/ime/implement/setting/HwrTutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v5

    if-eqz v5, :cond_7

    const/4 v3, 0x0

    :goto_1
    array-length v13, v5

    if-ge v3, v13, :cond_5

    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v13

    invoke-direct {p0, v13}, Lcom/diotek/ime/implement/setting/HwrTutorial;->getHwrLanguageType(I)I

    move-result v12

    const-string v13, "ko"

    aget-object v14, v5, v3

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v4, 0x1

    :cond_1
    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v13, ": "

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    const-string v13, ", "

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_4
    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-nez v4, :cond_7

    const v13, 0x7f080099

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_7

    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    const v13, 0x7f0800b8

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_6

    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const v13, 0x7f08009a

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_7

    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v13, p0, Lcom/diotek/ime/implement/setting/HwrTutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_a

    const/4 v3, 0x0

    :goto_3
    array-length v13, v5

    if-ge v3, v13, :cond_a

    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v13

    invoke-direct {p0, v13}, Lcom/diotek/ime/implement/setting/HwrTutorial;->getHwrLanguageType(I)I

    move-result v12

    if-nez v12, :cond_9

    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    aget-object v13, v5, v3

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const v13, 0x7f080096

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_d

    const-string v13, "hy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "\u055d "

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_5
    if-eqz v5, :cond_d

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v3, v13, :cond_b

    const-string v13, ", "

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    const-string v13, ": "

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_d
    const v13, 0x7f080097

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_10

    const-string v13, "hy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "\u055d "

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_7
    if-eqz v5, :cond_10

    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_10

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v3, v13, :cond_e

    const-string v13, ", "

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    const-string v13, ": "

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_10
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
