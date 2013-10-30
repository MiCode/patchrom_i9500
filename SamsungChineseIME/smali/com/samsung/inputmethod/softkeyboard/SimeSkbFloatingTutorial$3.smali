.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$3;
.super Ljava/lang/Object;
.source "SimeSkbFloatingTutorial.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->showTutorialDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$3;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    .line 157
    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setShowToturial(Z)V

    .line 159
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$3;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$3;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 162
    :cond_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
