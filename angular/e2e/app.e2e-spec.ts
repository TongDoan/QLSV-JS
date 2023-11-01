import { QLSVTemplatePage } from './app.po';

describe('QLSV App', function() {
  let page: QLSVTemplatePage;

  beforeEach(() => {
    page = new QLSVTemplatePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
