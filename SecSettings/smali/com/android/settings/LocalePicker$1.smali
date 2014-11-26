.class Lcom/android/settings/LocalePicker$1;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    move-object/from16 v6, p1

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    invoke-virtual {v12, v6, v10, v11}, Lcom/android/settings/LocalePicker;->findIndex(Landroid/widget/ListView;II)I

    move-result v3

    if-gez v3, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mPrevHoverText:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/LocalePicker;->access$000(Lcom/android/settings/LocalePicker;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    const-string v13, ""

    # setter for: Lcom/android/settings/LocalePicker;->mPrevHoverText:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/settings/LocalePicker;->access$002(Lcom/android/settings/LocalePicker;Ljava/lang/String;)Ljava/lang/String;

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    invoke-virtual {v12}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_4

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_a

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v12}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v12}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v12}, Lcom/android/settings/LocalePicker;->access$100(Lcom/android/settings/LocalePicker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v12

    if-ltz v12, :cond_7

    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v12}, Lcom/android/settings/LocalePicker;->access$100(Lcom/android/settings/LocalePicker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v12

    invoke-virtual {v12}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v12}, Lcom/android/settings/LocalePicker;->access$100(Lcom/android/settings/LocalePicker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_5
    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v12}, Lcom/android/settings/LocalePicker;->access$100(Lcom/android/settings/LocalePicker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v7, v13, v14}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_6
    :goto_2
    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # setter for: Lcom/android/settings/LocalePicker;->mPrevHoverText:Ljava/lang/String;
    invoke-static {v12, v1}, Lcom/android/settings/LocalePicker;->access$002(Lcom/android/settings/LocalePicker;Ljava/lang/String;)Ljava/lang/String;

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mCurrentSystemTtsLocale:Ljava/util/Locale;
    invoke-static {v12}, Lcom/android/settings/LocalePicker;->access$200(Lcom/android/settings/LocalePicker;)Ljava/util/Locale;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v12}, Lcom/android/settings/LocalePicker;->access$100(Lcom/android/settings/LocalePicker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mCurrentSystemTtsLocale:Ljava/util/Locale;
    invoke-static {v13}, Lcom/android/settings/LocalePicker;->access$200(Lcom/android/settings/LocalePicker;)Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v12

    if-ltz v12, :cond_6

    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v12}, Lcom/android/settings/LocalePicker;->access$100(Lcom/android/settings/LocalePicker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v12

    invoke-virtual {v12}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mCurrentSystemTtsLocale:Ljava/util/Locale;
    invoke-static {v13}, Lcom/android/settings/LocalePicker;->access$200(Lcom/android/settings/LocalePicker;)Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v12}, Lcom/android/settings/LocalePicker;->access$100(Lcom/android/settings/LocalePicker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mCurrentSystemTtsLocale:Ljava/util/Locale;
    invoke-static {v13}, Lcom/android/settings/LocalePicker;->access$200(Lcom/android/settings/LocalePicker;)Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_8
    iget-object v12, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    # getter for: Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v12}, Lcom/android/settings/LocalePicker;->access$100(Lcom/android/settings/LocalePicker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v7, v13, v14}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0
.end method
