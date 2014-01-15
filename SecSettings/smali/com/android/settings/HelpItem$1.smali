.class Lcom/android/settings_ex/HelpItem$1;
.super Ljava/lang/Object;
.source "HelpItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/HelpItem;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/HelpItem;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/HelpItem$1;->this$0:Lcom/android/settings_ex/HelpItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/HelpItem$1;->this$0:Lcom/android/settings_ex/HelpItem;

    iget-object v1, v1, Lcom/android/settings_ex/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    const v2, 0x7f02052c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/HelpItem$1;->this$0:Lcom/android/settings_ex/HelpItem;

    iget-object v1, v1, Lcom/android/settings_ex/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 107
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 109
    :cond_0
    return-void
.end method
