.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$2;
.super Ljava/lang/Object;
.source "SimeSkbFloatingTutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$moveBoardAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$2;->val$moveBoardAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$2;->val$moveBoardAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 132
    return-void
.end method
