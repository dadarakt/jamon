package prototype

import scalafx.application.JFXApp
import scalafx.event.ActionEvent
import scalafx.Includes._
import scalafx.application.JFXApp.PrimaryStage
import scalafx.scene.Scene
import scalafx.scene.control._
import scalafx.scene.layout.GridPane
import scalafx.scene.paint.Color
import scalafx.geometry.Insets

object CheckBoxTest extends JFXApp {

  val check = new CheckBox {
    text = "WurstBox"
  }
  check.onAction = (event: ActionEvent) => {
    lblCheckState.text = if (check.indeterminate.get) "Indeterminate" else check.selected.get().toString
  }

  val lblCheckState = new Label {
    text = check.selected.get().toString
  }

  val btnAllowIndeterminate = new scalafx.scene.control.Button {
    text = "Allow Indeterminate"
  }
  btnAllowIndeterminate.onAction = (event: ActionEvent) => {
    check.allowIndeterminate = !check.allowIndeterminate.get()
  }

  val lblAllowIndeterminate = new Label {
    text <== when(check.allowIndeterminate) choose "Can be Indeterminate" otherwise "Can not be Indeterminate"
  }

  val btnFire = new Button {
    text = "Fire!"
  }
  btnFire.onAction = (event: ActionEvent) =>  check.fire()

  val txfText = new TextField
  txfText.delegate.textProperty.bindBidirectional(check.text)

  val grid = new GridPane {
    padding = Insets(10)
    hgap = 5
    vgap = 5
  }
  grid.add(check, 0, 0)
  grid.add(lblCheckState, 1, 0)
  grid.add(btnAllowIndeterminate, 0, 1)
  grid.add(lblAllowIndeterminate, 1, 1)
  grid.add(btnFire, 0, 2)
  grid.add(txfText, 1, 2)

  stage = new PrimaryStage {
    title = "CheckBox Test"
    scene = new Scene {
      fill = Color.LIGHTGRAY
      content = grid
    }
  }

}


