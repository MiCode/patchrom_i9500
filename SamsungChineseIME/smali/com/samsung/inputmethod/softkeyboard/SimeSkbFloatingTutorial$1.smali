.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$1;
.super Ljava/lang/Object;
.source "SimeSkbFloatingTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 101
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->dismissTutorialDialog()V

    .line 105
    return-void
.end method
