.class Lcom/android/settings_ex/ContextualPageHelp$2;
.super Ljava/lang/Object;
.source "ContextualPageHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ContextualPageHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ContextualPageHelp;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ContextualPageHelp;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/ContextualPageHelp$2;->this$0:Lcom/android/settings_ex/ContextualPageHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/ContextualPageHelp$2;->this$0:Lcom/android/settings_ex/ContextualPageHelp;

    #getter for: Lcom/android/settings_ex/ContextualPageHelp;->recommendbtnplay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/ContextualPageHelp;->access$300(Lcom/android/settings_ex/ContextualPageHelp;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02052c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageHelp$2;->this$0:Lcom/android/settings_ex/ContextualPageHelp;

    iget-object v0, p0, Lcom/android/settings_ex/ContextualPageHelp$2;->this$0:Lcom/android/settings_ex/ContextualPageHelp;

    #getter for: Lcom/android/settings_ex/ContextualPageHelp;->recommendimg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/ContextualPageHelp;->access$500(Lcom/android/settings_ex/ContextualPageHelp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    #setter for: Lcom/android/settings_ex/ContextualPageHelp;->mAni2:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1, v0}, Lcom/android/settings_ex/ContextualPageHelp;->access$402(Lcom/android/settings_ex/ContextualPageHelp;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/ContextualPageHelp$2;->this$0:Lcom/android/settings_ex/ContextualPageHelp;

    #getter for: Lcom/android/settings_ex/ContextualPageHelp;->mAni2:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/settings_ex/ContextualPageHelp;->access$400(Lcom/android/settings_ex/ContextualPageHelp;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 75
    return-void
.end method
